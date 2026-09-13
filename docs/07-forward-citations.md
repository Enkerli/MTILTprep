# Forward citations — what has happened since

*A sample sweep, 2026-09-13. Who cites the library's load-bearing pieces, and what
changed as a result.*

**Method, and its limit.** A proper forward-citation search needs a citation graph.
OpenAlex is refused outright at the egress proxy from this machine (403) and
rate-limits the cloud fetcher (429), and Semantic Scholar is refused too. So this
is a **targeted search sample**, not a sweep: eight queries against the pieces most
load-bearing for MTILT. `tools/openalex-citations.sh` does the real job and runs
fine from your own terminal.

Two of the findings below change something in this repo rather than adding to it.

---

## 1. The grid assumption has been empirically demolished

**Polak & London, "Timing and Meter in Mande Drumming",** *Music Theory Online*
20.1 — with a live cluster around it.

`docs/02` says TUBS "makes disappear: micro-timing — the thing that often makes the
music. Equal boxes assert an evenness that may not be there." That was an argument.
It is now a measurement.

Analysing **over 20,000 drum stroke onsets**, Polak and London find the *beat* in
the kèngèbu part "not just approximately isochronous, but near perfectly so" —
while **the subdivision is clearly non-isochronous**. The kèngèbu pattern in Ngòn
averages **41:31:28**; Bire's bell accompaniment averages **59:41**. Neither
reduces to 50:50 or 67:33. Different ensembles hold consistent ensemble-specific
ratios across tempi and contexts. And musicians maintain categorical Long/Short
distinctions — these are **discrete metrical categories, not deviations from a
grid**.

The conclusion is aimed straight at transcription: using "a notational orthography
based on simple integer ratios" for categorical distinctions does not mean those
categories involve such ratios. Grid-based models "impose artificial regularity
rather than capturing actual metric structure."

**What this changes here.** The rhythm material in `docs/01` — rings, rotations,
`E(3,8)`, the four-panel figure in `docs/02` — all assumes an isochronous
substrate. That is fine as a representation *among others*, and the whole point of
`docs/02` is that each one hides something. But the hiding is now specific and
citable, and a workshop that presents a ring or a TUBS row without ever letting
participants hear that a real groove does not sit on it is teaching the grid as
the music. Worth a scenario of its own: **play a Mande recording against a
quantised version of itself.** No tool needed.

Adjacent and worth having: Sioros on polyrhythmic modelling of non-isochronous and
microtiming patterns (2023); "Bins, Spans, and Tolerance: Three Theories of
Microtiming Behavior," *Music Theory Spectrum* 45(2) (2023); the Candombe
microtiming work.

This is also the argument `kubik2010theory` makes at book length from inside the
scholarship. The forward search and the unread book on the shelf point the same way.

## 2. Timbre notation has moved past symbol sets — which answers the objection

**Casey, "Beyond Symbols: Indexical Notation for Sound Morphology",** *Organised
Sound*, published online February 2026.

The objection recorded against Thoresen and Sköld in `docs/03` was that their cost
is **a symbol set to be learned**, which sits awkwardly against bypassing
terminology. Casey's proposal does not have that cost.

Drawing on Peirce, the notation is **indexical** rather than symbolic or
pictographic: it establishes causal relationships between performer and visual
response without resembling the sound. The demonstration piece, *Undersong*, is an
interactive digital score whose visual elements respond **in real time to the
performer's spectral flux and noise content** — "virtual indexical" notation. It
engages Smalley's complaint that staff notation conveys little about timbre.

**What this changes here.** `docs/02` lists nine channels and treats notation as
something fixed on a page. A notation that responds causally to what is being
played is arguably a tenth, and it is the one closest to MTILT's disposition: the
learner does not decode a symbol, they act and watch the mark move. That is the
answering instrument, drawn. Whether it teaches anything is untested — but it is
the first timbre notation found here that a person could meet without being taught
a vocabulary first.

## 3. MIR has audited its own geography

The 2013 Gómez, Herrera & Gómez-Martin editorial named MIR's Western default. The
field has since measured it.

- **"Beyond a Western Center of Music Information Retrieval: A Bibliometric
  Analysis of the First 25 Years of ISMIR Authorship",** *TISMIR*. Twenty-five
  years of authorship, mapped.
- **"Editorial for TISMIR Special Collection: Cultural Diversity in MIR Research"**
  — the 2013 editorial's successor, a decade on.
- **"Diversifying MIR: Knowledge and Real-World Challenges, and New
  Interdisciplinary Futures",** *TISMIR*.
- **"Cross-Cultural Music Similarity: Bridging Human Perception, Signal Processing,
  and Foundation Models",** *TISMIR*.

**For the "music labs around the world" note.** The bibliometric paper is
effectively the list that note was asking for — who does this work and where, over
twenty-five years, with the concentration made visible. Start there rather than
assembling a list by hand.

## 4. Timbre semantics went crossmodal

Forward from `saitis2019semantics`:

- **"Color and tone color: audiovisual crossmodal correspondences with musical
  instrument timbre",** *Frontiers in Psychology* (2024/25).
- **"Timbral brightness perception investigated through multimodal interference",**
  *Attention, Perception, & Psychophysics* (2024) — brightness specifically, the
  most robust of the three dimensions, tested against interference.
- **"Timbre semantics through the lens of crossmodal correspondences: A new way of
  asking old questions."**
- **"Effect of Enculturation on the Semantic and Acoustic Correlates of Polyphonic
  Timbre."**

**Two things for MTILT.** The crossmodal work is the empirical backing for the
"music and drawing" note — timbre-to-colour is a studied correspondence, not a
workshop gimmick. And the enculturation paper is the timbre counterpart to the
Barlow/anti-Barlow scenario in `docs/01`: the same demonstration that a sense of
rightness has a shape, run on sound quality instead of rhythm.

## 5. Notation and transcription, from the Seeger line

- **"Notating Deconstruction: What Can Ethnomusicological Transcription Learn from
  the Notational Practices of Contemporary Composers?",** *Journal of the Royal
  Musical Association*. The representation-plurality argument, recent, and it
  crosses the graphic-score tradition with ethnomusicological transcription —
  which is `docs/02`'s channels 6 and 7 being put in contact by someone else.
- **"Humanities and engineering perspectives on music transcription",** *Digital
  Scholarship in the Humanities* 37(3). The two literatures that do not usually
  cite each other, in one paper.

## 6. Gold-MSI: propagated, not interrogated

Forward citations are dominated by **translations and validations** — Danish
(2024), Italian (2024), Portuguese (2020), and others. No substantive critique of
the *construct* surfaced in this sample.

**That is itself the finding**, and it supports the unease differently than a
critique would. An instrument gets translated into more languages while the
question of what "sophistication" ranks goes unasked. The cross-linguistic
validation work is careful psychometrics; none of it is about whether measuring
time and money spent on music is measuring cultural capital.

If a critique exists, this sample did not find it — which may be worth writing.

## 7. Green's model has its critical companion

The `green2008informal` entry in `SYNTHESES.md` noted that secondary summaries are
uniformly positive and that a critical literature exists but was unread. It is:

- **"Tensions, issues and strengths of Professor Lucy Green's model of informal
  learning",** *Music Education Research* (2022).
- **"Perceptions of the informal learning branch of Musical Futures",** *British
  Journal of Music Education*.

Read before adopting the model's posture wholesale. The tensions are likely to be
MTILT's tensions too, since MTILT is further along the same axis.

---

## What did not move

Nothing recent surfaced for Swanwick's CLASP, Koetting's TUBS as such (the action
is in the microtiming literature instead), or Seeger's *first* hazard — the
two-dimensional visual parameter standing for the full auditory one. That last
absence is interesting: the prescriptive/descriptive distinction gets cited
constantly and hazard one appears to be largely unquoted. If so, there is a paper
in it.

## Provenance

Targeted web search, not a citation graph. Polak & London and Casey were read from
their own pages; the rest are from search results and titles, so treat venue and
year as reliable and characterisations as provisional. Items worth adding to the
bibliography have been added; the rest are leads.

Run `tools/openalex-citations.sh` locally for the complete, ranked version.
