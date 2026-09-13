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
