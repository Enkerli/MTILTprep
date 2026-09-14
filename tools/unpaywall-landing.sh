#!/usr/bin/env bash
# Second pass over what tools/fetch-open-access.sh could not save as a PDF.
#
# fetch-open-access.sh asks OpenAlex for one best location and gives up when that
# URL answers with HTML. Most of those have a PDF one hop further in. This pass
# asks Unpaywall for *every* OA location, tries each PDF link, and on a landing
# page follows the `citation_pdf_url` meta tag that Project MUSE, JSTOR, OJS and
# most publisher platforms expose for Google Scholar.
#
# Unpaywall requires an email on every request.
#
#   MAILTO=you@example.org ./tools/unpaywall-landing.sh          # landing-page items
#   MAILTO=you@example.org ./tools/unpaywall-landing.sh --closed # also retry closed
#
# Reads references/pdf/OA-REPORT.md (run fetch-open-access.sh first). Downloads
# into references/pdf/ under the same slug, so a rerun of either script skips it.
# Writes references/pdf/UNPAYWALL-REPORT.md. What is still missing after this is
# the Zotero connector's job: it resolves through institutional access.
set -u
cd "$(dirname "$0")/.."
MAILTO="${MAILTO:?Unpaywall needs MAILTO=you@example.org}"
command -v jq >/dev/null || { echo "needs jq — brew install jq"; exit 1; }
IN=references/pdf/OA-REPORT.md
[ -s "$IN" ] || { echo "no $IN — run tools/fetch-open-access.sh first"; exit 1; }
# Identify honestly. A browser user agent was tried first and made things worse:
# sites behind Anubis (emusicology.org) serve a proof-of-work page to anything
# claiming to be Mozilla, and mtosmt.org served nothing. Bot walls are left alone.
UA="MTILTprep-fetch/0.1 (+https://github.com/Enkerli/MTILTprep)"

pattern='landing page only'
[ "${1:-}" = "--closed" ] && pattern='landing page only|closed'
dois=$(grep -E "^\- \*\*($pattern)\*\*" "$IN" | sed 's/[^`]*`\([^`]*\)`.*/\1/' | sort -u)
total=$(echo "$dois" | grep -c .)
echo "$total DOIs to retry from $IN"

REPORT=references/pdf/UNPAYWALL-REPORT.md
{ echo "# Unpaywall second pass"; echo
  echo "Generated $(date -u +%Y-%m-%d). Retried $total DOIs listed in OA-REPORT.md."; echo; } > "$REPORT"

is_pdf() { [ -s "$1" ] && [ "$(file -b --mime-type "$1")" = "application/pdf" ]; }

# try <url> <out>: fetch; if HTML, follow citation_pdf_url once.
try() {
  local url="$1" out="$2" tmp="$2.part" meta
  curl -fsSL --max-time 90 -A "$UA" -o "$tmp" "$url" 2>/dev/null || { rm -f "$tmp"; return 1; }
  if is_pdf "$tmp"; then mv "$tmp" "$out"; echo "$url"; return 0; fi
  meta=$(grep -io '<meta[^>]*name="citation_pdf_url"[^>]*>' "$tmp" | head -1 \
         | sed 's/.*content="\([^"]*\)".*/\1/' | sed 's/&amp;/\&/g')
  rm -f "$tmp"
  [ -n "$meta" ] || return 1
  curl -fsSL --max-time 90 -A "$UA" -e "$url" -o "$tmp" "$meta" 2>/dev/null \
    && is_pdf "$tmp" && { mv "$tmp" "$out"; echo "$meta (via citation_pdf_url)"; return 0; }
  rm -f "$tmp"; return 1
}

ok=0; still=0
while read -r doi; do
  [ -n "$doi" ] || continue
  slug=$(echo "$doi" | tr '/:.' '---')
  out="references/pdf/${slug}.pdf"
  if [ -s "$out" ]; then echo "skip    $doi"; continue; fi

  j=$(curl -sS --max-time 30 "https://api.unpaywall.org/v2/$doi?email=$MAILTO" 2>/dev/null)
  title=$(echo "$j" | jq -r '.title // "?"' 2>/dev/null | cut -c1-70)
  # PDF links first, best location first; then landing pages for the meta-tag hop.
  urls=$(echo "$j" | jq -r '[.best_oa_location] + (.oa_locations // [])
           | map(select(. != null)) | (map(.url_for_pdf) + map(.url_for_landing_page))
           | map(select(. != null)) | unique_by(.) | .[]' 2>/dev/null)
  # DataCite arXiv DOIs are not in Unpaywall, but the PDF address is derivable.
  case "$doi" in
    10.48550/[aA]r[xX]iv.*) urls="https://arxiv.org/pdf/${doi#*[xX]iv.}"; title="arXiv:${doi#*[xX]iv.}" ;;
  esac

  got=""
  while read -r u; do
    [ -n "$u" ] || continue
    got=$(try "$u" "$out") && break
    got=""
  done <<< "$urls"

  if [ -n "$got" ]; then
    printf 'ok      %s  %s\n' "$doi" "$title"
    echo "- **ok** · \`$doi\` · $title · <${got% (via*}>${got#"${got% (via*}"}" >> "$REPORT"
    ok=$((ok+1))
  else
    printf 'missing %s  %s\n' "$doi" "$title"
    n=$(echo "$urls" | grep -c .)
    echo "- **still missing** · \`$doi\` · $title · $n Unpaywall location(s) tried" >> "$REPORT"
    still=$((still+1))
  fi
  sleep 0.2
done <<< "$dois"

{ echo; echo "$ok recovered, $still still missing, of $total retried."; } >> "$REPORT"
echo; echo "$ok recovered, $still still missing. See $REPORT"
