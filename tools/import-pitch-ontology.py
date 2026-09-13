#!/usr/bin/env python3
"""Import Enkerli/pitch-ontology sources/works.yaml into BibTeX + CSL-JSON.

Kept as a script rather than a one-off so the import can be re-run when the
ontology's bibliography grows.

  curl -fsSL -o /tmp/works.yaml \
    https://raw.githubusercontent.com/Enkerli/pitch-ontology/main/sources/works.yaml
  python3 tools/import-pitch-ontology.py /tmp/works.yaml
"""
import yaml, json, pathlib, re, sys
from collections import Counter

src_path = pathlib.Path(sys.argv[1] if len(sys.argv) > 1 else '/tmp/works.yaml')
works = yaml.safe_load(src_path.read_text())['works']

KIND = {'journal_article':'article','book':'book','book_chapter':'incollection',
        'conference_paper':'inproceedings','thesis':'phdthesis','dataset':'misc',
        'report':'techreport','web_page':'misc','software':'misc'}

def esc(s): return str(s).replace('&','\\&').replace('%','\\%').replace('_','\\_')
def year_int(y):
    m = re.search(r'\d{4}', str(y))
    return int(m.group()) if m else None

out, csl = [], []
for w in works:
    key = re.sub(r'[^A-Za-z0-9-]', '', str(w['id']))
    typ = KIND.get(w.get('kind',''), 'misc')
    f = [('title', esc(w['title']).replace('\n',' '))]
    if w.get('authors'): f.append(('author', ' and '.join(esc(a) for a in w['authors'])))
    if w.get('year'):    f.append(('year', esc(w['year'])))
    if w.get('venue'):   f.append(('journal' if typ=='article' else 'booktitle', esc(w['venue'])))
    for a,b in (('volume','volume'),('issue','number'),('pages','pages'),
                ('doi','doi'),('url','url'),('language','language')):
        if w.get(a): f.append((b, esc(w[a])))
    notes = []
    if w.get('note'):   notes.append(str(w['note']).replace('\n',' '))
    if w.get('access'): notes.append(f"access: {w['access']}")
    v = w.get('verified') or {}
    if v.get('method'): notes.append(f"verified via {v['method']} ({v.get('date','')})")
    if notes: f.append(('note', esc(' — '.join(notes))))
    if w.get('domains'): f.append(('keywords', esc(', '.join(w['domains']))))
    out.append(f"@{typ}{{{key},\n  " + ',\n  '.join(f'{k:9s}= {{{v}}}' for k,v in f) + "\n}\n")

    e = {'id':key,
         'type':{'article':'article-journal','book':'book','incollection':'chapter',
                 'inproceedings':'paper-conference'}.get(typ,'document'),
         'title':w['title']}
    if w.get('authors'): e['author'] = [{'literal':a} for a in w['authors']]
    yi = year_int(w.get('year'))
    if yi: e['issued'] = {'date-parts':[[yi]]}
    elif w.get('year'): e['issued'] = {'literal': str(w['year'])}
    for a,b in (('venue','container-title'),('volume','volume'),('issue','issue'),
                ('pages','page'),('doi','DOI'),('url','URL'),('language','language')):
        if w.get(a): e[b] = str(w[a])
    if w.get('domains'): e['keyword'] = ', '.join(w['domains'])
    if notes: e['note'] = ' — '.join(notes)
    csl.append(e)

hdr = ("% Imported from Enkerli/pitch-ontology — sources/works.yaml\n"
       "% The ontology's own domain taxonomy is in `keywords`; its Crossref /\n"
       "% publisher verification is recorded in `note`. Kept separate from\n"
       "% mtilt.bib: distinct provenance, distinct curation.\n"
       "% Regenerate with tools/import-pitch-ontology.py\n\n")
root = pathlib.Path(__file__).resolve().parent.parent
(root/'references/works-pitch-ontology.bib').write_text(hdr + '\n'.join(out))
(root/'references/works-pitch-ontology.csl.json').write_text(json.dumps(csl, indent=2, ensure_ascii=False))

print(f"{len(out)} works | {sum(1 for w in works if w.get('doi'))} with DOI | "
      f"{sum(1 for w in works if w.get('verified'))} verified")
print("domains:", dict(Counter(d for w in works for d in (w.get('domains') or [])).most_common()))
