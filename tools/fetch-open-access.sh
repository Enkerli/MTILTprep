#!/usr/bin/env bash
# Resolve open-access PDFs for every DOI in references/*.bib and download them.
#
# This covers BOTH bibliographies, including the 104 works imported from
# pitch-ontology — most of whose URLs are doi.org links rather than direct PDFs,
# which is why a hand-written list could never cover them.
#
# Uses OpenAlex to find the best OA location. No key needed; MAILTO joins the
# polite pool and is recommended.
#
#   MAILTO=you@example.org ./tools/fetch-open-access.sh
#
# Downloads into references/pdf/ (gitignored). Writes references/pdf/OA-REPORT.md
# listing what was closed, so you know what still needs a library.
set -u
cd "$(dirname "$0")/.."
MAILTO="${MAILTO:-}"; Q=""; [ -n "$MAILTO" ] && Q="&mailto=$MAILTO"
command -v jq >/dev/null || { echo "needs jq — brew install jq"; exit 1; }
mkdir -p references/pdf
REPORT=references/pdf/OA-REPORT.md
{ echo "# Open access status"; echo; echo "Generated $(date -u +%Y-%m-%d) via OpenAlex."; echo; } > "$REPORT"

dois=$(grep -ho 'doi[[:space:]]*=[[:space:]]*{[^}]*}' references/*.bib \
       | sed 's/.*{\(.*\)}/\1/' | sed 's#^https\?://doi.org/##' | tr -d ' ' | sort -u)
total=$(echo "$dois" | grep -c .)
echo "$total unique DOIs across references/*.bib"
ok=0; closed=0

while read -r doi; do
  [ -n "$doi" ] || continue
  slug=$(echo "$doi" | tr '/:.' '---')
  out="references/pdf/${slug}.pdf"
  if [ -s "$out" ]; then echo "skip  $doi"; continue; fi

  j=$(curl -sS --max-time 30 "https://api.openalex.org/works/doi:$doi?select=title,publication_year,open_access,best_oa_location$Q" 2>/dev/null)
  url=$(echo "$j" | jq -r '.best_oa_location.pdf_url // .open_access.oa_url // empty')
  title=$(echo "$j" | jq -r '.title // "?"' | cut -c1-70)

  if [ -z "$url" ]; then
    printf 'closed  %s  %s\n' "$doi" "$title"
    echo "- **closed** · \`$doi\` · $title" >> "$REPORT"
    closed=$((closed+1)); continue
  fi

  if curl -fsSL --max-time 90 -o "$out" "$url" 2>/dev/null \
     && [ "$(file -b --mime-type "$out")" = "application/pdf" ]; then
    printf 'ok      %s  %s\n' "$doi" "$title"
    ok=$((ok+1))
  else
    rm -f "$out"
    printf 'OA but not a PDF  %s\n        %s\n' "$doi" "$url"
    echo "- **landing page only** · \`$doi\` · $title · <$url>" >> "$REPORT"
  fi
  sleep 0.25
done <<< "$dois"

{ echo; echo "$ok downloaded, $closed closed, of $total DOIs."; } >> "$REPORT"
echo; echo "$ok downloaded, $closed closed. See $REPORT"
