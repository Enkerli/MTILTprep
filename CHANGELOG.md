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
