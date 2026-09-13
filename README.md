# MTILTprep

Working material for **MTILT — MusicTech: Inclusive Learning & Teaching**.

A long-term project with deliberately open deliverables. This folder is the scratch
and staging ground: the thinking so far, the references behind it, and the notes that
haven't been placed yet.

> Everything here is a **map**, not a route. The competency frameworks surveyed in
> `docs/04` were written to make musical learning assessable; MTILT is not trying to
> do that. They are collected because knowing where the well-trodden paths run is
> useful — especially when you intend to leave them.

## The stance, in one paragraph

MTILT is about musical *phenomena* more than common musical concepts. The hedge is
deliberate: concepts are welcome, including conventional ones, especially through
scaffolding and "experience then explain." What gets bypassed are the **representational
defaults** — staff notation as the shape of music, the piano keyboard as the shape of
pitch. It favours playfulness, exploration, peer learning, informality, ungrading,
heutagogy and fun; it is more about jamming, being a good hang and curiosity than about
reaching preestablished standards.

## Layout

```
docs/         the session's nine documents, in reading order
references/   53 sources as BibTeX + CSL-JSON, a synthesis of each,
              plus pitch-ontology's own 104 works, and scripts.
              The documents themselves are gitignored
tools/        import and citation-sweep scripts
notes/        raw notes, dated, kept verbatim
html/         the published versions of the docs (design intact)
```

### docs/

| File | What it is |
|---|---|
| `01-workshop-scenarios.md` | Seven session designs built on tools that already exist. **Superseded in part** — written before the stance was clarified; its four "tests" harden a deliberate hedge into a rule. Kept for the scenarios, not the framing. |
| `02-representation-cabinet.md` | Nine channels of musical representation — syllabic, numeric, grid, cyclic, positional, drawn, signal-derived, morphological, procedural, staff. What each reveals and hides; which ones the Music Suite already speaks. |
| `03-aims-and-descent.md` | Sixteen learning aims sorted into six kinds; timbre descriptors and their empirical grounding; the descent-to-single-cycle sequence. |
| `04-competency-frameworks.md` | Review across seven literatures, with a coverage verdict per aim. Tally: 4 strong, 6 partial, 6 absent. |
| `05-landscape.md` | The terrain sketch. Four modes of travel, the two ditches, the trail log, the "incomplete systems presented as complete" reading. |
| `06-repo-insights.md` | Read across all 52 repositories as one body of work. Curation-in-passes, evidence over claim, keeping reversed decisions, and what is absent everywhere — including any multi-user feature at all. |
| `07-forward-citations.md` | What has happened since. The grid assumption measured and refuted (Polak & London), timbre notation without a symbol set (Casey 2026), MIR's own geography audited, and Green's critical companion. |
| `08-citation-harvest.md` | Reading the 836 citing works. Timing and groove are a quarter of the harvest — not what the bibliography was built for. |
| `09-participatory-discrepancies.md` | Keil 1987, and the threads that turn out to be one thread. Includes the contested empirical evidence, and why two claims about uneven timing must not be run together. |

The `html/` copies are the source of record for anything with a figure — the markdown
conversions replace diagrams with descriptions.

### references/

`./fetch-pdfs.sh` pulls 22 open-access PDFs into `references/pdf/` and 8 web
pages into `references/archive/`. **Neither is committed** — `.gitignore` excludes
both folders plus `*.pdf`, `*.epub`, `*.webarchive`, `*.warc`, `*.mhtml` and
Zotero artefacts anywhere in the tree. The documents live in Zotero; the repo
carries metadata and syntheses.

`works-pitch-ontology.bib` / `.csl.json` are the 104 works curated for
[pitch-ontology](https://github.com/Enkerli/pitch-ontology), imported with
`tools/import-pitch-ontology.py` — kept separate from `mtilt.bib` because the
provenance and the curation differ. 72 carry DOIs, 93 are verified against
Crossref or a publisher record, and the ontology's own domain taxonomy survives
in `keywords`.

### Getting the documents

Three fetchers: two because the bibliographies need different treatment, and a
second pass for what the first leaves on a landing page.

- **`references/fetch-pdfs.sh`** — a hand-curated list of direct URLs, now
  including pitch-ontology's items that have one. 57 targets. Needs nothing but
  `curl`.
- **`tools/fetch-open-access.sh`** — resolves every DOI in `references/*.bib`
  through OpenAlex and downloads the best open-access copy. This is what covers
  the pitch-ontology set, most of whose URLs are `doi.org` links rather than
  PDFs. Writes `references/pdf/OA-REPORT.md` listing what is closed. Needs `jq`.
- **`tools/unpaywall-landing.sh`** — retries OA-REPORT's landing-page items
  through every Unpaywall location, following `citation_pdf_url` meta tags.
  Recovered 11 of 28 on its first real run. Needs `jq` and `MAILTO`.

### Forward citations

- **`tools/citations.html`** — open it in a browser. No terminal, no install, no
  API key. All 81 DOIs from both bibliographies are embedded; it queries OpenAlex
  from the page, ranks citing works by their own citation counts, shows
  open-access links, and copies the whole thing out as Markdown.
  The list is built from the CSL-JSON by `tools/build-citations-dois.py`; rerun
  it when either bibliography changes.
- **`tools/tag-citation-themes.py`** — tags each citing title in a report by
  theme and counts rows and distinct works. The recorded method behind the theme
  table in `docs/08`.
- **`tools/openalex-citations.sh`** — the same job from a terminal.

Neither could be run from the assistant side: OpenAlex is refused at this
session's egress proxy (403) and rate-limits the cloud fetcher (429). `docs/07`
is a search sample and says so.
Both scripts have since run from a terminal; `references/citations/REPORT.md` is
the terminal sweep, `references/OpenAlexFwdCite.md` the browser one.

[`SYNTHESES.md`](references/SYNTHESES.md) is one entry per source — what it is,
what it argues, what it is for here — and every entry is marked with **how much
of it was actually consulted**: `read`, `extracted`, `landing`, `secondary`, or
`background` (not consulted; general knowledge, unverified). About half are
`background`, which is the honest state of a bibliography assembled in one
session. One entry, `wiggins1993framework`, records a specific unverified claim
made elsewhere in this repo.

## Conventions

Following `manifold` and `patch-panel`: **CC0 for data and text, MIT for tooling.**
Everything currently in this repo is dedicated to the public domain under
[CC0 1.0](LICENSE) — the documents, the notes, the bibliography. The only code
here is `references/fetch-pdfs.sh`, which CC0 covers fine; if tooling grows
enough to matter, it moves to MIT in a second `LICENSE-MIT` alongside this one,
as in the sibling repos.
Status ladders over completion — a document at `sketch` is a valid document. Claims
carry their evidence; where something is asserted rather than verified, it says so
at the bottom of the file.

## Status

Everything here is v0.1 and none of it has met a learner. The provenance of the
material is mixed by design — some of it is what Alex would help people develop if
they want to, some is his own appetite as a musicker who builds tools, some comes
from teaching. Those answer to different tests and shouldn't be collapsed.

See also [`HANDOFF.md`](HANDOFF.md) — what needs a terminal with
credentials, and what this repo's conventions require of anyone editing it.

## Not yet done

- No git history. `git init && git add . && git commit` when it's worth one.
- The seven scenarios are at `sketch`; none has been run.
- The encyclopedia-with-practice-before-concept idea (see `notes/`) may be the format
  that holds the rest. Undecided.
- Timbre has no representation anywhere in the suite. Known, open.
