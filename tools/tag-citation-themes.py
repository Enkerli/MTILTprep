#!/usr/bin/env python3
"""Tag every citing title in a forward-citation report by theme, and count.

docs/08's first theme table was made by hand and the method was not recorded,
so it could not be repeated or checked. This is the recorded method: the rules
are the THEMES table below, and anyone can rerun them.

  python3 tools/tag-citation-themes.py references/citations/REPORT.md
  python3 tools/tag-citation-themes.py references/OpenAlexFwdCite.md

Reads the Markdown report (either the terminal or the browser format). If the
raw OpenAlex pages sit beside it as references/citations/<doi-slug>.json, also
counts *works* rather than rows.

What is counted
  rows   every listed citing work under every source, as the report prints it.
         A source listed twice in the report is counted once.
  works  distinct citing works across the whole harvest, needing the raw JSON:
         - one work cited by several of our sources counts once (OpenAlex id);
         - versions of one work (preprint and published) count once: same
           normalised title and same year, for titles of 25 characters or more;
         - a book's chapters and paratext count as the book: records of type
           book, book-chapter, paratext or other that share a DOI prefix and an
           identical reference count of 20 or more are one work.

How titles are tagged
  Titles only, not abstracts or venues. Case-insensitive regular expressions.
  The rules were written by reading every title in the 2026-09-13 terminal
  harvest, hits and misses, and tightened once; a different harvest needs the
  same check. docs/08's hand-made table had one "cross-cultural and anti-colonial"
  row; here it is two, because a title that names a tradition (a raga classifier)
  is not the same claim as one that frames a comparison or a critique.
  A title can carry several themes, so theme counts do not sum to the total.
  Titles that match nothing are counted as untagged. English keywords, with a
  few French and German forms; titles in other languages will mostly go
  untagged, which undercounts rather than miscounts.
"""
import collections, glob, json, os, re, sys, unicodedata

THEMES = [
    ('timing, metre, entrainment', r"""
        \brhythm | \brythm | \bmet(re|er)s?\b(?<!pitch\ meter) | \bmetric | \btemp(o|i)s?\b
        | timing | microtim | isochron | synchron | entrain | \bbeats?\b | downbeat
        | backbeat | polyrhythm | polymet | \bswing | \bclave\b | aksak | syncopat
        | \btapping | \bpulsed?\b | \bonsets? | \busul\b | time[ -]signature | \bmesure\b
        | \bgrouping\b | \btriplet | \baccents\b | ostinato | \brushing\b | network\ delay
        | (musical|psychological)\ time | time\ perception | making\ time
        | temporal\ (structure|expectation|regularity)"""),
    ('groove', r"""\bgroove | urge\ to\ move"""),
    ('cross-cultural, universals, anti-colonial', r"""
        cross-?\ ?cultur | \bcultures\b | cultural\ (diversity|distance|familiarity|transmission)
        | coloni | anti-racis | \buniversal | et(h)?nomu(si|zi)k | ethnomusicolog | ethno-?theory
        | world(’s|'s)?\ music | non-western | global\ (musical|corpus|analysis|south)
        | musical\ diversity | ethnic\ music | indigenous | comparative\ musicology | encultur
        | foreign\ songs"""),
    ('a named tradition outside the Western canon', r"""
        black-atlantic | enslaved | new\ orleans | \bafric | \bafro
        | \bindia | carnatic | karnatak | hindustani | sangeet | \br[aā]g(a|as|s)?\b
        | \bmak[aâ]m | \bmaq[aâ]m | maqom | turkish | \btürk | ottoman | uzbek | \bmande\b
        | malian | \bmali\b | javanese | gamelan | indonesia | balinese | \barab | egypt
        | chinese | shanxi | sinitic | \bjapan | ethiopia | cameroon | xhosa | igbo | acholi
        | jul.hoan | aboriginal | papua | georgian | iranian | \biran\b | persian | armenia
        | latin\ americ | caribbean | mariachi"""),
    ('pedagogy', r"""
        educat | educaç | pedagog | \bteach | classroom | sala\ de\ aula | curricul | \bstudents?\b
        | \bschools?\b(?!-) | conservatoi?re | (music|instrument|performance|piano|violin)\ lessons?
        | apprentice | music(al)?\ training | öğretim | musical\ futures | study\ abroad
        | (informal|group|lifelong|student|children's|musical|music|digital|intercultural
           |language|mathematical|team-based|online\ international)\ learning
        | learning\ (and|in|by|of)\ (music|imitation|english) | \blearners?\b | didact"""),
    ('representation, notation, transcription', r"""
        \bnotat | notasyon | notacij | transcri | \bscores?\b | score-cent | visuali[sz]
        | visual\ (representation|feedback|analytics|hierarchical|pitch)
        | (?<!mental\ )(?<!neural\ )(?<!emotion\ )(?<!acoustic\ )representations?\b(?!\ learning)
        | \bgraphic | sheet\ music | \bglyph | tonnetz | pitch[- ]class\ space | geometr
        | symbolic | \bdrawing | iconicity | space\ and\ pitch | pitch\ height"""),
    ('MIR and generation', r"""
        information\ retrieval | \bmir\b | dataset | \bcorp(us|ora)\b | \bclassif(ication|ying|ier)
        | recogni(tion|[sz]e) | detection | deep\ learning | machine\ learning | neural\ networks?
        | self-supervised | algorithm | computational | computer-assisted | \bgenerati(ve|ng)\b
        | (pattern|data|rhythmic|melody|melodies)\ generation | generation\ of | transformer
        | \blstm\b | \bcnn\b | source\ separation | beat\ tracking | recommender | music\ recommendation
        | language\ models? | foundation\ models? | \bnlp\b | \bai\b | artificial\ intelligence
        | automat(ic|ed) | (tonic|pitch|tempo|key)\ [a-z ]{0,12}estimation | extraction
        | motif\ discovery | (raga|tonic|artist|genre)\ identification | tonic-note
        | signal\ processing | fundamental\ frequency | gradient\ descent | digital\ musicology"""),
    ('timbre', r"""
        timbr | spectromorph | typomorph | tone\ colou?r | sound\ objects? | \bspectral\b
        | brightness | \broughness | klangfarbe | metaphorical\ sound | sound\ attributes
        | language\ of\ musical\ sounds"""),
]
RX = [(name, re.compile(rx, re.I | re.X)) for name, rx in THEMES]
TIMING, GROOVE = THEMES[0][0], THEMES[1][0]
DEARDORFF = '10.1177/1028315306287002'


def tags(title):
    # OpenAlex titles carry non-breaking and figure hyphens and curly apostrophes
    t = re.sub(r'[\u2010-\u2015\u2212]', '-', title).replace('\u2019', "'")
    return {name for name, rx in RX if rx.search(t)}


def norm(t):
    t = unicodedata.normalize('NFKD', t or '').lower()
    return re.sub(r'[^a-z0-9]+', ' ', t).strip()


def parse(path):
    """[(source_doi, [row, ...])], sources in report order, first listing only."""
    out, seen, cur = [], set(), None
    for line in open(path, encoding='utf-8'):
        m = re.match(r'^`([^`]+)` — ', line)
        if m:
            doi = m[1]
            cur = None if doi.lower() in seen else (doi, [])
            if cur: seen.add(doi.lower()); out.append(cur)
            continue
        m = re.match(r'^- \*\*(\d{4})\*\* · (.*?) — \*(.*?)\* · (\d+) cites', line)
        if m and cur:
            cur[1].append({'year': int(m[1]), 'title': m[2], 'venue': m[3]})
    return out


def work_keys(path, sources):
    """Map (source_doi, row index) -> work key, from the raw OpenAlex pages."""
    folder = os.path.dirname(path)
    records = {}
    for doi, rows in sources:
        f = os.path.join(folder, re.sub(r'[/:.]', '-', doi) + '.json')
        if not os.path.exists(f):
            return None
        results = json.load(open(f, encoding='utf-8')).get('results', [])
        if len(results) != len(rows):
            sys.exit(f'{f}: {len(results)} records but {len(rows)} rows in the report')
        records.update({(doi, i): w for i, w in enumerate(results)})

    def book(w):
        refs = w.get('referenced_works_count') or 0
        prefix = (w.get('doi') or '').replace('https://doi.org/', '').split('/')[0]
        if w.get('type') in ('book', 'book-chapter', 'paratext', 'other') and refs >= 20 and prefix:
            return ('book', prefix, refs)

    shared = collections.Counter(filter(None, map(book, records.values())))
    keys = {}
    for k, w in records.items():
        title = norm(w.get('title'))
        if book(w) and shared[book(w)] > 1:
            keys[k] = book(w)
        elif len(title) >= 25:
            keys[k] = ('title', title, w.get('publication_year'))
        else:
            keys[k] = ('id', w.get('id'))
    return keys


def main(path):
    sources = parse(path)
    rows = [(doi, i, r) for doi, rs in sources for i, r in enumerate(rs)]
    keys = work_keys(path, sources)

    row_counts = collections.Counter()
    deardorff = collections.Counter()
    for doi, i, r in rows:
        t = tags(r['title']) or {'untagged'}
        row_counts.update(t)
        if doi == DEARDORFF: deardorff.update(t)
    tg_rows = sum(1 for _, _, r in rows if tags(r['title']) & {TIMING, GROOVE})

    works = {}
    if keys:
        for doi, i, r in rows:
            works.setdefault(keys[(doi, i)], set()).update(tags(r['title']))
    work_counts = collections.Counter()
    for t in works.values():
        work_counts.update(t or {'untagged'})
    tg_works = sum(1 for t in works.values() if t & {TIMING, GROOVE})

    print(f'# Themes: {path}\n')
    print(f'{len(sources)} sources, {len(rows)} rows' + (f', {len(works)} works' if keys else ' (no raw JSON: rows only)') + '\n')
    head = '| theme | rows | of which Deardorff |' + (' works |' if keys else '')
    print(head); print('|---|---:|---:|' + ('---:|' if keys else ''))
    for name in [n for n, _ in THEMES] + ['untagged']:
        line = f'| {name} | {row_counts[name]} | {deardorff[name]} |'
        if keys: line += f' {work_counts[name]} |'
        print(line)
    line = f'| *timing or groove (union)* | {tg_rows} ({tg_rows/len(rows):.0%}) | |'
    if keys: line += f' {tg_works} ({tg_works/len(works):.0%}) |'
    print(line)


if __name__ == '__main__':
    for p in sys.argv[1:] or ['references/citations/REPORT.md']:
        main(p); print()
