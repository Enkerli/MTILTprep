# Changelog

## v0.1 — 2026-09-13

Initial package. Everything produced in one session, 12–13 September 2026.

- `docs/01` through `docs/05` — five documents, in the order they were written.
  The ordering matters: `01` predates the clarification of the stance and is partly
  superseded by `05`.
- `references/` — 37 sources, BibTeX and CSL-JSON, with `fetch-pdfs.sh`. (46 after the second batch.)
- `notes/2026-09-13-exercise-notes.md` — twenty unplaced notes, verbatim, with
  annotations kept separate.

### Corrections made during the session, recorded so they aren't repeated

- The Music Suite is available as **web apps**; the AUv3 builds are not the relevant
  surface for workshops. `docs/01` was written before this was clear.
- Manifold is not a key project.
- Work with children is not the main approach. Adults, mixed audiences and teenagers
  work well; intergenerational musicking is a possible focus.
- "More about phenomena than concepts" is a **hedge, on purpose**. It must not be
  hardened into a no-concepts rule or a set of pass/fail tests.
- Timbre representation is rare *in musical learning* specifically. The analytical
  and compositional attempts (Thoresen, Sköld) do not change that.
- The acoustics point belongs to the critical thread: music theory *invokes* acoustic
  phenomena to justify principles and then abandons the connection — overtone series
  to scales, then back to 12TET, approximation unexamined.

### Later the same day

- `notes/2026-09-13-exercise-notes.md` — second batch of thirteen notes appended,
  verbatim, with annotations kept separate as before.
- `references/mtilt.bib` — nine entries added under a new section M: Huizinga,
  Caillois, Oldenburg, Neff, Godøy & Leman, Xenakis, Scott (TaMilDaA), NIME, Kaplan.
  CSL-JSON regenerated. Now 46 entries.

### Amendment pending

`docs/05-landscape.md` flags "substituting one default for another" as the risk of the
decolonizing mode. The hex-grid note corrects this: a hex grid **is** as much a Golden
Hammer as a piano, and neutrality was never the goal — difference was. Decolonizing is
not about finding the unmarked instrument; it is about never having only one.

### Third batch, same day

- `docs/06-repo-insights.md` — new. Reading across 52 repositories as one body of
  work. Finding: most of MTILT's positions are already implemented in code, years
  before being articulated as pedagogy.
- `notes/2026-09-13-exercise-notes.md` — third batch appended.

### Reference handling, same day

- `.gitignore` — widened. `references/pdf/` and `references/archive/` are both
  excluded, along with `*.pdf`, `*.epub`, `*.djvu`, `*.webarchive`, `*.warc`,
  `*.mhtml`, `*.maff` and Zotero artefacts anywhere in the tree. Articles and
  archives live in Zotero; the repo carries metadata and syntheses only.
- `references/fetch-pdfs.sh` — three open-access items added after an audit
  against the bibliography (Gold-MSI in PLoS ONE, Wallmark in Music & Science,
  the 2019 article from Érudit), plus an `arc()` section that saves eight web
  pages into `references/archive/`. 22 PDFs, 8 archives. Zotero's own snapshots
  are the better capture and the script says so.
- `references/SYNTHESES.md` — new. One entry per source: what it is, what it
  argues, what it is for here. Every entry carries an evidence level recording
  how much of it was actually consulted. Twenty-six are `background` — not
  consulted, general knowledge, unverified.

### One flagged claim

`references/SYNTHESES.md` records that the axes attributed to Wiggins et al.
(1993) elsewhere in this repo — *expressive completeness* and *structural
generality* — came from a search query rather than from the paper, and are
unverified. Left visible rather than quietly corrected, per the GAPS.md
convention in `docs/06`.

### Analysis from the local library, same day

The fetch script was run and further documents added by hand. Working from the
actual PDFs rather than from search results changed three entries and added three.

- **`wiggins1993framework` — the flagged claim is verified.** *Expressive
  completeness* and *structural generality* are the paper's own terms, defined on
  its second page. The wrong-until-checked note is kept above the correction
  rather than deleted. The paper also turns out to contain the MIDI tuning
  passage ("it acknowledges neither, simply ignoring the issue") — a 1993 citation
  for pitch-ontology's thesis — and an analysis of UPIC that names DrawnQurve's
  ancestor's weakness.
- **`seeger1958prescriptive` — upgraded to `read`, and it is not what the slogan
  suggests.** The paper opens with *three* hazards; the prescriptive/descriptive
  distinction is the third. The first — that a two-dimensional visual parameter is
  assumed to stand for the full auditory one — is MTILT's own thesis, stated in
  1958. Scope caveat now recorded: the article deals only with unaccompanied
  melody.
- **`selfridgefield1997beyondmidi`** — corrected. The local PDF is ten pages of
  front matter, not the book.
- **Three sources added to the bibliography** from the local library: Gómez,
  Herrera & Gómez-Martin on computational ethnomusicology (which names MIR's
  Western default in its first sentence); Weisser & Falceto on qəñət in Amhara
  secular music (a fifty-year musicological consensus audited acoustically); and
  Kubik's *Theory of African Music* Vol. II — the theory from inside, against
  which TUBS and Toussaint are outsiders' instruments. 49 entries; CSL-JSON
  regenerated.
- **`fetch-pdfs.sh` bug fixed.** `get()` did not check content type, so the Québec
  PFEQ URLs saved TYPO3 HTML pages under `.pdf` names. It now verifies
  `application/pdf` and reports the URL for manual fetching instead.
- Local library notes appended to `SYNTHESES.md`: the PFEQ HTML problem, six Git
  LFS pointer stubs from an unrelated project sitting in `references/pdf/`, and
  six byte-identical duplicate pairs.

### Forward citations and the pitch-ontology import, same day

- `docs/07-forward-citations.md` — new. A targeted search sample, not a graph
  sweep: OpenAlex is refused at the egress proxy (403) and rate-limits the cloud
  fetcher (429); Semantic Scholar is refused too.
- **Two findings change existing documents rather than adding to them.**
  Polak & London measured over 20,000 Mande drum onsets: the beat is near-perfectly
  isochronous, the *subdivision* is not (41:31:28; 59:41), and Long/Short are
  discrete categories rather than deviations. The micro-timing caveat `docs/02`
  attached to TUBS is now a measurement, and the rhythm material in `docs/01`
  assumes a substrate that real grooves do not sit on. And Casey (2026) proposes an
  *indexical* timbre notation — causal, responsive, no symbol set — which answers
  the objection recorded against Thoresen and Sköld in `docs/03`.
- Also found: MIR's 25-year authorship bibliometrics (the "music labs around the
  world" list, already assembled); crossmodal timbre semantics, which backs the
  music-and-drawing note; and the critical companion to Green that `SYNTHESES.md`
  had flagged as missing. Four added to `mtilt.bib`, now 53.
- `references/works-pitch-ontology.bib` / `.csl.json` — pitch-ontology's 104
  curated works imported, via `tools/import-pitch-ontology.py`. Kept separate:
  different provenance, different curation. 72 DOIs, 93 verified.
- `tools/openalex-citations.sh` — the full sweep, for a terminal that can reach
  OpenAlex. Writes a ranked `references/citations/REPORT.md`; raw JSON gitignored.

### Fetching and querying, without a terminal

- **`references/fetch-pdfs.sh` now covers pitch-ontology.** Its open items with
  direct URLs were generated from `works-pitch-ontology.bib` and appended — 2 PDFs
  and 25 page archives. 57 targets total.
- **`tools/fetch-open-access.sh`** — new, and the real answer for that
  bibliography: 72 of its 104 works carry DOIs rather than direct URLs, so no
  hand-written list could reach them. Resolves each DOI's best open-access
  location through OpenAlex, downloads it, and reports what is closed in
  `references/pdf/OA-REPORT.md`.
- **`tools/citations.html`** — new. A self-contained page that runs the forward
  citation sweep in a browser, with no terminal and no install. All 81 DOIs from
  both bibliographies are embedded; queries go from the page straight to OpenAlex,
  so the session's egress restrictions do not apply. Ranks citing works by their
  own citation counts, surfaces open-access links, exports Markdown. No external
  assets — it works from `file://` and offline apart from the API calls.

### The scripts ran; following what came back

- `references/OpenAlexFwdCite.md` — the user's `tools/citations.html` run,
  committed as the record. 64 sources with citing work since 2022, 836 citing
  works, 608 distinct.
- `docs/08-citation-harvest.md` — a reading of it. **Timing and groove are a
  quarter of the harvest**, which is not what this bibliography was assembled
  around. Also one finding about the bibliography itself: all 17 rows of
  intercultural-competence-in-higher-education noise come from a single entry,
  `deardorff2006identification`.
- `docs/09-participatory-discrepancies.md` — the family-event threads turn out to
  be one thread, named by Keil in 1987. Blending is his *textural* discrepancy,
  explicitly. Includes the honest complication: controlled studies repeatedly fail
  to find that microtiming deviations raise groove ratings. And the distinction
  that matters — Keil's claim (expressive deviation from a norm) is not Polak &
  London's (categorically non-isochronous subdivision); the lab studies test the
  first and do not touch the second.
- Eight sources added: Keil 1987 and Keil & Feld, Nachmanovitch, Dolan et al.,
  the classical-improvisation hegemony paper, Lascabettes / rhythm-circle, the
  15-country rhythm priors study, and anti-colonial strategies in music science.
  `mtilt.bib` now 61.
- `references/fetch-pdfs.sh` now writes `references/FETCH-LOG.md` recording every
  failure and wrong-content-type result, so "what didn't work" is answerable. The
  answer for the last run was already in `references/pdf/OA-REPORT.md`: 10
  downloaded, 41 closed, 28 landing-page-only, of 79 DOIs.
- `HANDOFF.md` — for a coding agent with a terminal: pushing, fetching what is
  still missing, and the three conventions not to break.

### The handoff, from a terminal

A Claude Code session on the user's machine, where `gh` is authenticated and
OpenAlex answers. `main` pushed (four commits, `c91fe28`..`5f9c976`).

- All three fetchers run. `fetch-pdfs.sh`: 7 failures in `FETCH-LOG.md`, three of
  them pitch-ontology URLs that still carry BibTeX escapes (`\%20`, `\%2F`) and
  so cannot resolve — a generator bug, not closed access. `fetch-open-access.sh`:
  2 more downloaded, 41 closed, 28 landing-page-only, of 81 DOIs.
- `references/citations/REPORT.md` — the terminal sweep, committed beside the
  browser run rather than over it. 78 sources, 982 citing entries since 2022,
  against the browser run's 64 and 836. `docs/08` reads the browser run and has
  not been redone against this one.
- **`tools/unpaywall-landing.sh`** — new. The second pass the handoff described:
  every Unpaywall OA location for each landing-page DOI, following
  `citation_pdf_url` when a location answers with HTML; arXiv DOIs go straight
  to arxiv.org, since Unpaywall does not index DataCite. **11 of the 28
  recovered**, 17 left for Zotero. Several recoveries are repository copies
  (IYTE, KTH DiVA, UPF, KU ScholarWorks) and may be accepted manuscripts rather
  than the published version.
- First run of that script recovered **0 of 28**, recorded here so it is not
  repeated: it sent a browser user agent, and emusicology.org's Anubis wall
  answers anything claiming to be Mozilla with a proof-of-work page. The script
  now identifies itself honestly. Bot walls are not worked around.
- **Escaped URLs, fixed.** The cause was `esc()` in
  `tools/import-pitch-ontology.py`, applied to every field including `url` and
  `doi`. It had also escaped two **DOIs** (`10.1162/comj\_a\_00023`,
  `10.1163/2330-4804\_eiro\_com\_1679`), so both were queried wrongly in every
  run above. The importer now writes those fields verbatim; ten fields in
  `works-pitch-ontology.bib` and five URLs in `fetch-pdfs.sh` are corrected, and
  the bib's 84 URLs and 72 DOIs now match the CSL-JSON, which was never escaped.
- The escapes were only part of the story above. After the fix, the PLOS archive
  succeeds; MIMO still fails (the site returns 500 for everything) and the Qatar
  Digital Library page still fails (403). Both DOIs now resolve in OpenAlex: comj
  is closed, eiro is a landing page Unpaywall cannot improve. The citation report
  is regenerated: 80 sources, 986 entries.
- `docs/08` rechecked against the terminal run, in a new closing section; the
  original reading is left as written, with a note under its header. The terminal
  run contains the browser run entirely. Three corrections: the browser run
  **counted two sources twice** (in both bibliographies, and `citations.html` does
  not deduplicate), so 62 sources and 815 rows, not 64 and 836, and TISMIR is 12
  rows, not 16. **Rows are not works**: OpenAlex splits a book into chapters that
  each carry the book's whole reference list: about 87 extra rows from nine books.
  18 of the 21 rows under *Swing Rhythm in Classic Drum Breaks* are one book. And
  `The Improvisational State of Mind` is a second Deardorff-style bridge,
  psychedelics and consciousness research at the top of its list. The theme table
  is not redone, because the tagging method was never recorded.
- `tools/citations.html` — its embedded DOI list was pasted in by hand and had
  drifted: the escaped `comj` DOI, two DOIs listed twice (the cause of the double
  count in `docs/08`), and neither source added after it was built. Now generated
  by **`tools/build-citations-dois.py`** from both CSL-JSON files: 81 DOIs, one
  entry each, three marked as belonging to both bibliographies so the source
  filter still finds them. Checked in a browser: the `mtilt.bib` filter runs clean
  (11 of 12 with citing work since 2022), and the `comj` DOI resolves in OpenAlex.
- **`docs/08` theme table redone, with the method recorded** in
  `tools/tag-citation-themes.py`. The rules are regular expressions over citing
  titles, written by reading every title in the terminal harvest and tightened
  once. Counts are rows and distinct works, with one citing work, its versions,
  and a book's chapters each counted once. The first table's numbers do not
  survive: under the same rules the browser run gives timing 229 not 137, MIR 116
  not 42, groove 50 not 72. The finding survives when counted by works: timing
  or groove is 23% of 669 works (29% of rows, because rhythm sources overlap).
  "Cross-cultural" is split into framing (46 works) and named traditions (104),
  39 of the latter also MIR. The hand-made table is left in place, with a
  pointer.
- **PFEQ fetched at last.** The two `PFEQ-*.pdf` files in `references/pdf/` were
  still TYPO3 HTML from before `get()` checked content type, and the skip-if-present
  check meant no rerun would replace them. Deleted and refetched. The real problem
  was that both `education.gouv.qc.ca` URLs now redirect to the quebec.ca
  Education home page. The programmes moved to `cdn-contenu.quebec.ca`, split by
  discipline. `fetch-pdfs.sh` now fetches `PFEQ-musique-primaire.pdf` (chapter 8,
  domain presentation plus music; *Inventer*, *Interpréter*, *Apprécier*, with the
  sociocultural dimension present) and `PFEQ-musique-premier-cycle-secondaire.pdf`.
  `meq2001arts` carries the new URL in the bib and CSL-JSON. Its level stays
  `landing` until it is read.
