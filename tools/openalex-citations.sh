#!/usr/bin/env bash
# Forward-citation sweep over the MTILT bibliographies, via OpenAlex.
#
# OpenAlex is refused at this session's egress proxy (403) and rate-limits the
# cloud fetcher (429), so this could not be run from the assistant side. It runs
# fine from your own terminal. No API key needed; set MAILTO for the polite pool.
#
#   MAILTO=you@example.org ./tools/openalex-citations.sh            # all DOIs
#   MAILTO=you@example.org ./tools/openalex-citations.sh 2022       # cited since
#
# Reads DOIs from references/*.bib. Writes:
#   references/citations/<doi-slug>.json   raw OpenAlex pages (gitignored)
#   references/citations/REPORT.md         ranked summary
set -u
cd "$(dirname "$0")/.."
SINCE="${1:-2022}"
MAILTO="${MAILTO:-}"
OUT=references/citations
mkdir -p "$OUT"
Q=""; [ -n "$MAILTO" ] && Q="&mailto=$MAILTO"

command -v jq >/dev/null || { echo "needs jq — brew install jq"; exit 1; }

REPORT="$OUT/REPORT.md"
{
  echo "# Forward citations since $SINCE"
  echo
  echo "Generated $(date -u +%Y-%m-%d) from OpenAlex. Ranked by citing work's own"
  echo "citation count, so the top of each list is what the field picked up."
  echo
} > "$REPORT"

dois=$(grep -ho 'doi[[:space:]]*=[[:space:]]*{[^}]*}' references/*.bib \
       | sed 's/.*{\(.*\)}/\1/' | sed 's#^https\?://doi.org/##' | sort -u)
total=$(echo "$dois" | grep -c .)
echo "$total DOIs found in references/*.bib"

i=0
while read -r doi; do
  [ -n "$doi" ] || continue
  i=$((i+1))
  slug=$(echo "$doi" | tr '/:.' '---')
  printf '[%d/%d] %s\n' "$i" "$total" "$doi"

  meta=$(curl -sS --max-time 30 "https://api.openalex.org/works/doi:$doi?select=id,title,publication_year,cited_by_count$Q")
  wid=$(echo "$meta" | jq -r '.id // empty' | sed 's#.*/##')
  [ -n "$wid" ] || { echo "  not in OpenAlex"; continue; }
  title=$(echo "$meta" | jq -r '.title // "?"')
  total_cites=$(echo "$meta" | jq -r '.cited_by_count // 0')

  cites=$(curl -sS --max-time 40 \
    "https://api.openalex.org/works?filter=cites:$wid,from_publication_date:$SINCE-01-01&per-page=25&sort=cited_by_count:desc$Q")
  echo "$cites" > "$OUT/$slug.json"
  n=$(echo "$cites" | jq -r '.meta.count // 0')
  echo "  $total_cites total citations; $n since $SINCE"

  {
    echo "## $title"
    echo
    echo "\`$doi\` — $total_cites citations total, **$n since $SINCE**"
    echo
    echo "$cites" | jq -r '.results[]? |
      "- **\(.publication_year)** · \(.title // "untitled") — *\(.primary_location.source.display_name // "?")* · \(.cited_by_count) cites\(if .open_access.oa_url then " · [OA](\(.open_access.oa_url))" else "" end)"'
    echo
  } >> "$REPORT"
  sleep 0.3
done <<< "$dois"

echo
echo "Report: $REPORT"
echo "Raw pages: $OUT/*.json (gitignored)"
