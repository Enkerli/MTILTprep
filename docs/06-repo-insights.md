# What the repos already know

*Read across 52 repositories on `github.com/Enkerli`, 2013–2026, as one body of
work rather than as separate projects. Written 2026-09-13.*

The finding is not that the repos contain useful components. It is that **most of
MTILT's stated positions are already implemented somewhere** — built, in working
code, years before they were articulated as a pedagogy. What follows is mostly
quotation.

---

## 1. Curation in passes, not scores

The most important thing in the whole body of work, and it is machinery rather
than a slogan. From `SwiftMIDIcurator`, describing a model that lives in the
`Carrier` foundation:

> A judgement is a **disposition**, not a rating. Seven of them — *keep, tweak,
> again, elsewhere, partly, later, skip* — and none is terminal. `keep` and
> `tweak` are different next actions, not better and worse.
>
> A judgement belongs to a **pass**. Marks from different passes coexist, so a
> clip you skipped on the first sweep and kept on the third records a
> *disagreement* rather than a correction. That disagreement is the most
> interesting thing in the record and collapsing it into an average would throw
> it away.
>
> Nothing is deleted. A skip means "last, this pass", not "gone".
>
> **Facets are derived, tags are typed.**

ProgGenie applies the same idea to chord changes, with weights as multipliers
where "1 means no opinion, and the corpus shows through untouched", clamped
symmetrically in log space "so *never* and *always* cost the same number of taps."

**For MTILT:** this is the trail log, already built. It is also the precise
counter-argument to the objection to "sophistication" — a record that preserves
disagreement across passes instead of averaging it into a level. The alternative
was implemented before the problem was named.

## 2. Evidence over claim, for a decade

- `patch-panel` — "every claim evidence-tagged"
- `manifold` — a `stub → draft → complete → verified` ladder, where verified means
  somebody tested against hardware
- `rnd-companion` — host SysEx behaviour was "measured, not guessed", in its own
  document
- `pitch-ontology` — every substantial claim connects to a source, and gaps are
  recorded rather than inferred
- `SwiftSerpe` — "Coverage is a number in the output, not a claim in this file."

**For MTILT:** the status ladder in the scenarios is not a new convention. It is
this one, which has been running since at least 2026 and arguably since
`ethnographic-concepts` in 2015.

## 3. Keep the reversed decision

`enkerli-swift/GAPS.md` holds two arguments that turned out to be wrong, kept
verbatim next to their corrections:

> This section used to hold the two we declined to port, and both arguments were
> overruled — so what is left of it is the arguments themselves, kept rather than
> deleted, because **two reversed decisions with the same shape are worth more
> than a tidy page.**

And the lesson extracted rather than assumed: *"this foundation cannot do X" is a
claim about a shape, and shapes can be changed.* Then, after the second reversal,
a rule amended in place: before writing "won't", name the layer the obstacle
actually lives at, and check whether it is the layer you looked at. Both times it
was not.

**For MTILT:** `docs/01` is flagged as partly superseded and its wrong framing
left in place. That was matching this convention without knowing it existed.
Worth making explicit — a superseded document with its error visible is more
useful than a corrected one.

## 4. Name what you decline

> **What we decline, we write down.** The **won't** rows are the ones that keep
> this from being a list of everything the old builds do. A rewrite's real
> opportunity is not doing the accumulation again, and that opportunity is only
> taken if it is recorded — otherwise **every gap becomes a debt by default**.

**For MTILT:** without this, the sixteen aims become sixteen obligations. An aim
not being pursued should be recorded as declined, with the argument, not left to
look like an oversight.

## 5. A missing control is a gap; a control that lies is a bug

The line `GAPS.md` opens with, after finding three automatable parameters that
did nothing:

> An empty parameter tree is an honest statement about a plug-in that has no
> host-automatable controls yet. Three inert ones were not.

**For MTILT:** an unmet aim is fine and gets listed. A session that appears to
deliver something it does not is the other category, and has no "decide" option.

## 6. Two questions, never conflated — and the negative result is the report

`SwiftRndSysExProbe` exists to answer one question per host, and refuses to merge
IN with OUT because only one of them is answerable without hardware. Its usual
verdict:

> OUT: not proven — 5 frames sent. This is what it looks like with no device
> attached, and also what a host that drops our output looks like. The two are
> indistinguishable from in here.
>
> That is not a failure to report; it is the report. **A green light there would
> mean nothing.**

Every burst ends on "a value nobody has ever sent before", because the earlier
JUCE probe repeated a fixed seed and could not distinguish *your frames arrived*
from *it was already there*.

**For MTILT:** a workshop that produced nothing is a finding. And a claim that a
session "worked", with no way to tell success from residue, is the green light
that means nothing.

## 7. Difference over replacement, implemented in the identifiers

Every Swift plug-in carries a different four-character code *and* a different
bundle identifier from its JUCE sibling, and the READMEs give the same reason
each time: **so both can be installed at once and compared.** Not migration.
Coexistence, for the purpose of noticing the difference.

**For MTILT:** this is the hex-grid position — a different hammer, not an
absence of one — already built into the build system, before the note was written.

## 8. Corpus first, and credited

`JazzPatterns` takes its material from the Jazzomat / Dig That Lick pattern
history under ODbL and says so; `Progressions-from-JazzStandards` builds a
concise, human-readable, easily editable JSON from iReal Pro data; ProgGenie
walks corpus transition statistics rather than rules.

**For MTILT:** the local-model idea has a practice behind it already. Choosing a
corpus and stating its licence and provenance is something these repos do by
habit.

## 9. Breath and gesture from the start

`MEC — Micro Expression Control` sits in the account from 2018 with this framing:

> the deeper motivation is to allow these 'controllers' to become more
> 'instrument' like, so you can just pickup and play without thinking about
> software configurations etc.

That is "a way to play with music which is more *intuitive* than most
instruments" — aim #2 on the list — eight years early. (Provenance caveat: the
MEC README is the upstream project's text and this may be a working copy rather
than original authorship. The presence is the signal, not the credit.)

The line continues through `Vane` ("continuous gestural expression rather than
discrete note events", breath-first VCA with velocity opt-in), `SwiftVane`
(`max(CC2, CC11, pressure, velocityMix × √velocity)` — "four spellings of one
gesture, so `max` rather than a sum"), and `DrawnQurve`, whose Swift README makes
the argument most sharply:

> For the other four plug-ins in this suite the SwiftUI interface is a
> preference. Here it is the feature. [...] a plug-in whose entire input is a
> gesture is where the argument stops being abstract.

And the resampling detail, which is a pedagogical statement about gesture whether
or not it was meant as one: the stroke is resampled **evenly in time across the
stroke, not in distance along it**, "so drawing slowly through the middle spends
more of the loop there."

## 10. The pedagogical repos nobody filed as pedagogy

- `ethnographic-concepts` (2015) — "a glossary of ethnographic concepts to help
  build pedagogical material in a variety of disciplines." A glossary built to
  serve cross-disciplinary teaching. `pitch-ontology` is its descendant, ten
  years later, pointed at pitch.
- `KnowledgeEcosystems` — 487 entries, 20,000 BCE to 2020, three parallel tracks,
  thirteen thematic storylines including **Indigenous and decolonial
  perspectives**, women and gender, credentialism and professionalization. An
  instrument for decolonizing a map, already built.
- `Tritkart` — a card-sorting webapp. A user-research method, in the account.
- `qualdatape` (2019) — material for a session on qualitative data in public
  engagement.
- `litteratiedonnees` — data literacy, in French.

**MTILT is not a new departure.** It is the continuation of a decade of building
glossaries, timelines and card sorts for pedagogical purposes, now pointed at
music.

---

## What is absent across all 52

Consistent with the earlier surveys, and worth stating as a set:

- **No signal-derived representation.** No spectrogram, no sonogram, anywhere.
- **No syllabic or oral material.** Nothing for bol, konnakol, solfège.
- **No timbre representation.** Confirmed again from a different angle.
- **No multi-user anything.** Across fifty-two repositories there is no
  synchronous collaboration, no session sharing, no networked play.
  `SwiftWorkspace` is a message bus, but inside one machine — "watch the plane,
  and play what crosses it" describes a plane with one person on it.

That last absence matches the note exactly: the nut never cracked. It is not that
it was attempted and failed here; it was never attempted.

## The gesture lineage, which turns out to be one lineage

Beatsurfing (2012) and Playground (2016) come from the same people — HLO S.A. /
Herrmutt Lobby, with Yaniv De Ridder on Beatsurfing. The interaction primitive is
the same in both: **you do not press things, you find paths across them.**
Beatsurfing lets you draw your own controller and "surf" it; Playground has you
"find paths across buttons that sound interesting" by gliding and swiping,
with shakers you grab and move so they hit other objects.

So *curves and gestures*, *HLO Playground*, *Beatsurfing* and *sync and play
together* are not four notes. They are one lineage — and Beatsurfing even shipped
a two-player collaborative update, which means the thing found inspiring and the
thing that never cracked were being attempted by the same team, in the same
design language, over a decade ago.

---

## Provenance

READMEs and `GAPS.md` were fetched from GitHub and quoted directly; quotations are
verbatim. The repository list is the GitHub API's, 52 entries, sorted by last
update. Forks and exports in the account (`reveal.js`, `io-2012-slides`,
`papercite`, `lucascherkewski.com`) are excluded from the reading. `MEC` is
flagged above. The "what is absent" list is an absence argument from repository
descriptions and READMEs, not from reading every source tree — a collaboration
feature could be buried in one without being described.
