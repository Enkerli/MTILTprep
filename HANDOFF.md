# Handoff — for a coding agent with a terminal

This repo was built from a Cowork session whose shell runs in a sandbox on the
user's machine. That sandbox has **no GitHub credentials** (`gh` is not installed,
no `GITHUB_TOKEN`, no credential helper, `api.github.com/user` → 401) and its
network goes through an egress proxy that **refuses OpenAlex and Semantic Scholar
outright**. Everything below is what could not be done from there.

## 1. Push

There are unpushed commits on `main`. `origin` already exists.

```bash
cd ~/Documents/Coding/MTILTprep
git log --oneline origin/main..main    # see what is waiting
git push origin main
```

Repo-local identity is already set and matches the user's other repositories:

```
Alexandre Enkerli <327544+Enkerli@users.noreply.github.com>
```

Commits carry a `Co-Authored-By: Claude Opus 5` trailer and a session link. Keep
that convention for anything added in the same line of work.

## 2. Fetch what is still missing

Three scripts, all idempotent — they skip what is already downloaded.

```bash
./references/fetch-pdfs.sh                               # direct URLs; logs failures
MAILTO=you@example.org ./tools/fetch-open-access.sh      # DOI → OA, needs jq
MAILTO=you@example.org ./tools/openalex-citations.sh     # forward citations
```

**Known state after the user's last run:** 10 downloaded / 41 closed of 79 DOIs,
28 resolving to landing pages rather than files. Two known problems:

- The Québec **PFEQ** URLs return TYPO3 HTML, not PDFs. `get()` now detects this
  and reports instead of saving. Those documents need fetching by hand from
  `education.gouv.qc.ca`.
- Six **Git LFS pointer stubs** (132 bytes each — Stewart's *Calculus*, Anderson's
  CFD, Kreyszig, a PDE text, a thesis, an SDM manual) sit in `references/pdf/`
  from an unrelated project. Harmless, gitignored, not ours. Leave or remove.

Failures are logged to `references/FETCH-LOG.md` (gitignored) and closed-access
items to `references/pdf/OA-REPORT.md`.

### Where more could be retrieved

The 28 "landing page only" entries in `OA-REPORT.md` mostly have a reachable PDF
one hop further in — Project MUSE, JSTOR, publisher pages. A pass that follows
`citation_pdf_url` meta tags or Unpaywall's `best_oa_location` would pick up a
good share. **Zotero's browser connector handles these better than any script**,
since it resolves through institutional access; the user intends to import into
Zotero anyway, so the honest advice is: run the scripts for the easy ones and let
Zotero do the awkward ones.

## 3. Do not

- **Do not commit reference documents.** `.gitignore` excludes `references/pdf/`,
  `references/archive/`, and `*.pdf`, `*.epub`, `*.djvu`, `*.webarchive`,
  `*.warc`, `*.mhtml`, `*.maff` and Zotero artefacts anywhere in the tree. The
  repo carries metadata and syntheses, never the files. This is deliberate and the
  user asked for it explicitly.
- **Do not tidy away wrong things.** This repo keeps corrections *beside* the
  errors that produced them, following the `GAPS.md` convention in the user's
  `enkerli-swift`. `docs/01` is marked partly superseded with its wrong framing
  intact; `SYNTHESES.md` holds a record of an unverified claim and then its
  verification. Preserve that shape.
- **Do not raise evidence levels without evidence.** Every entry in
  `references/SYNTHESES.md` is marked `read`, `extracted`, `landing`, `secondary`
  or `background`. About half are `background` — not consulted. Only change a
  level after actually reading the source.

## 4. Conventions

CC0 for data and text (`LICENSE`), MIT for tooling if it grows. Status ladders
over completion. Claims carry their evidence; where something is asserted rather
than verified, the file says so at the bottom. Notes are kept verbatim with any
annotation clearly separated.

## 5. Orientation

`README.md` for the layout, `CHANGELOG.md` for what happened and why — including
a list of corrections the user made during the session, recorded so they are not
repeated.
