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
docs/         the session's five documents, in reading order
references/   46 sources as BibTeX + CSL-JSON, plus a fetch script
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

The `html/` copies are the source of record for anything with a figure — the markdown
conversions replace diagrams with descriptions.

### references/

`./fetch-pdfs.sh` pulls 19 open-access PDFs into `references/pdf/`. They are not
committed. See `references/README.md` for why the folder ships empty and what is
paywalled.

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

## Not yet done

- No git history. `git init && git add . && git commit` when it's worth one.
- The seven scenarios are at `sketch`; none has been run.
- The encyclopedia-with-practice-before-concept idea (see `notes/`) may be the format
  that holds the rest. Undecided.
- Timbre has no representation anywhere in the suite. Known, open.
