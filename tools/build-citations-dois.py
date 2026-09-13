#!/usr/bin/env python3
"""Rebuild the DOI list embedded in tools/citations.html from the bibliographies.

The page runs from file:// with no server, so it cannot read references/ itself;
the list has to be embedded. It was first pasted in by hand, which is how it came
to hold an escaped DOI, two DOIs twice, and none of the sources added afterwards.
Run this whenever either bibliography changes.

  python3 tools/build-citations-dois.py

Reads the CSL-JSON rather than the BibTeX: same DOIs, no LaTeX in titles. A DOI
in both bibliographies becomes one entry listing both, so the page queries it once
and the "mtilt.bib only" / "pitch-ontology only" filters still find it.
"""
import json, pathlib, re

root = pathlib.Path(__file__).resolve().parent.parent
page = root / 'tools/citations.html'
BIBS = ['mtilt.bib', 'works-pitch-ontology.bib']   # order decides which title wins

entries = {}
for bib in BIBS:
    for e in json.loads((root / 'references' / bib.replace('.bib', '.csl.json')).read_text()):
        doi = (e.get('DOI') or '').strip()
        doi = re.sub(r'^https?://(dx\.)?doi\.org/', '', doi)
        if not doi:
            continue
        d = entries.setdefault(doi.lower(), {'doi': doi, 'key': e['id'],
                                             'title': e.get('title', ''), 'src': []})
        d['src'].append(bib)

block = json.dumps(list(entries.values()), indent=1, ensure_ascii=False)
html = page.read_text()
new, n = re.subn(r'const DOIS = \[.*?\n\];', lambda _: f'const DOIS = {block};', html, flags=re.S)
assert n == 1, 'could not find the DOIS block in citations.html'
page.write_text(new)

both = sum(1 for d in entries.values() if len(d['src']) > 1)
print(f"{len(entries)} DOIs embedded ({both} in both bibliographies)")
