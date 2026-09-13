# What came back — reading the citation harvest

*From `references/OpenAlexFwdCite.md`, produced by `tools/citations.html`: 64 of
our sources have work citing them since 2022, 836 citing works listed, 608
distinct. This is a reading of that file, not a summary of it.*

*Rechecked the same day against the terminal run, `references/citations/REPORT.md`.
Some counts below are wrong; they are corrected in the last section, not here.*

## The shape of it

Tagging every citing title by theme:

| rows | theme |
|---:|---|
| 137 | timing, metre, entrainment |
| 74 | cross-cultural and anti-colonial |
| 73 | pedagogy |
| 72 | groove |
| 49 | representation, notation, transcription |
| 42 | MIR and generation |
| 25 | timbre |

**Timing and groove together are a quarter of the harvest.** That is not what the
bibliography was built to be about — it was assembled around representation,
competency frameworks and timbre. The forward citations are telling us where the
живая research energy actually is, and it is in rhythm, timing and the body.

`docs/09` follows that where it leads.

## One finding about the bibliography itself

Seventeen rows are about **intercultural competence in higher education** — COIL,
study abroad, business English, language learning. All seventeen come from a
single source: `deardorff2006identification`.

That entry is pulling an entire literature that has nothing to do with music into
our citation graph. It is not a bad source; it is a *bridge to somewhere else*,
and in a forward-citation sweep it behaves like noise. Worth knowing before the
next run, and worth remembering as a general property: a widely-adopted framework
cited across fields will dominate a small bibliography's forward search.

## Clusters worth opening

### Rhythm perception has gone cross-cultural and large-scale

- **"Commonality and variation in mental representations of music revealed by a
  cross-cultural comparison of rhythm priors in 15 countries"** — *Nature Human
  Behaviour* 2024, 89 citations. Fifteen countries. This is the empirical version
  of the question `docs/01`'s Barlow/anti-Barlow scenario asks in a room.
- **"Aesthetics of musical timing: Culture and expertise affect preferences for
  isochrony"** — *Cognition* 2022. Preference for evenness is itself enculturated.
- **"Modeling enculturated bias in entrainment to rhythmic patterns"** — *PLoS
  Computational Biology* 2022.
- **"Metric Modes and Fluid Meter in Mande Drumming Music"** — *MTO* 2023, directly
  continuing Polak & London.
- **"Theoretical and empirical advances in understanding musical rhythm, beat and
  metre"** — *Nature Reviews Psychology* 2024. The review to start from.

### Groove has become a research field with its own reviews

- **"A review of psychological and neuroscientific research on musical groove"** —
  *Neuroscience & Biobehavioral Reviews* 2023, 55 citations.
- **"Groove as a multidimensional participatory experience"** — *Psychology of
  Music* 2023. The word *participatory* is Keil's; see `docs/09`.
- **"The sweet spot between predictability and surprise: musical groove in brain,
  body, and social connection"** — *Frontiers in Psychology* 2022.
- **"Understanding the Relationship Between Catchiness and Groove"**,
  **"Syncopation and Groove in Polyphonic Music"** — both *Music Perception*.
- **"Pupil drift rate indexes groove ratings"** — *Scientific Reports* 2022.
  Groove, measured through the pupil.

### The decolonizing thread has a method literature now

- **"Anti-Colonial Strategies in Cross-cultural Music Science Research"** — *Music
  Perception* 2023, 32 citations. Not a critique of the field's geography but a
  set of strategies for doing the research differently.
- **"Participant and Musical Diversity in Music Psychology Research"** — *Music &
  Science* 2025.
- **"Beyond Diverse Datasets: Responsible MIR, Interdisciplinarity, and the
  Fractured Worlds…"** — *TISMIR* 2023.
- **"Building Sustainable Global Collaborative Networks: Recommendations from
  Music Studies"** — MIT Press 2023. Practical, and relevant to the "music labs
  around the world" note.
- **"Emotional responses in Papua New Guinea show negligible evidence for a
  universal effect"** — *PLoS ONE* 2022. A universal claim, tested, not supported.

### Two crossmodal findings that back notes already in this repo

- **"Trilled /r/ is associated with roughness, linking sound and touch across
  spoken languages"** — *Scientific Reports* 2022. Sound↔touch, cross-linguistic.
  This is *textures and haptics*, the phrase used for what timbre learning might
  feel like, with evidence under it.
- **"Coloured hearing, colour music, colour organs, and the search for
  perceptually meaningful [correspondences]"** — *i-Perception* 2022. The history
  of the music-and-drawing idea, including its failures.

### Collective play, measured

- **"Turning Heads on the Dance Floor: Synchrony and Social Interaction Using a
  Silent Disco"** — *Music & Science* 2023, and a companion in *Journal of
  Cognitive Neuroscience*. A silent disco is an experimental apparatus for
  studying people playing together while hearing different things — which is an
  oblique angle on the collaboration nut.

## Venues to watch

*Journal of New Music Research* (20 rows), *Music Perception* (17), *TISMIR* (16),
*Music Theory Online* (15), *Music & Science* (14), *Journal of Mathematics and
Music* (12), *Organised Sound* (11). Between them these cover nearly every thread
in this repo, and all but two publish open access or have open archives.

## Caveat

This is a reading of titles and venues, not of papers. Every characterisation
above is `landing` level at best. The value is in knowing what exists and where to
look, not in what is claimed about any of it.

## Against the terminal run

*`references/citations/REPORT.md`, from `tools/openalex-citations.sh`, run the
same day: 80 sources queried, 65 with citing work since 2022, 986 rows, 731
distinct titles. Up to 25 citing works per source, where the browser run showed 20.*

### What changed, and why

The terminal run **contains the browser run entirely**: every row above is in it,
and only one citing work's own count moved (1 → 0). Against the browser run's 815
rows once its repeats are removed (see below), there are 171 more, from three
places:

- **The per-source cap.** 29 sources have more than 20 citing works since 2022 and
  were cut off at 20 in the browser run; they now show up to 25. 135 rows.
- **Two sources added after the browser run**: `The Improvisational State of Mind`
  (54 citing since 2022) and `Are Classical Musicians Excluded from Improvisation?`
  (7).
- **One DOI that could not be queried before**: `10.1162/comj_a_00023`, which the
  pitch-ontology import had LaTeX-escaped. 4 citing works.

### Corrections to the counts above

- **The browser run counted two sources twice.** `10.1080/09298215.2013.818038`
  (*Computational Ethnomusicology*) and `10.3406/ethio.2013.1539` are in both
  `mtilt.bib` and `works-pitch-ontology.bib`, and `tools/citations.html` does not
  deduplicate. So the header's 64 sources are **62**, and 21 of the 836 rows are
  repeats: **815**. The 608 distinct titles are unaffected.
- **TISMIR is 12, not 16.** Four of its rows were in the repeated section. *Music &
  Science* is 13, not 14. The other venue counts stand, and the terminal run gives
  much the same order: *JNMR* 21, *Music Perception* 17, *MTO* 16, *Music &
  Science* 15, *Journal of Mathematics and Music* 13, TISMIR 12, *Organised Sound*
  11.
- **The theme table has not been redone.** How titles were tagged was not
  recorded, so it cannot be repeated exactly. What can be said: the repeated
  section was computational-ethnomusicology work, so the rows it inflated are
  mostly MIR and cross-cultural, by up to 21, and timing and groove are, if
  anything, a slightly *larger* share than a quarter. The next point pulls the other way.

### Rows are not works

Two properties of OpenAlex inflate row counts, and the browser run has both.

**Books are split into chapters, and each chapter carries the whole book's
reference list.** A monograph citing one of our sources shows up as the book, its
introduction, each chapter, its appendix and even its copyright page, each listed
separately and all with the same reference count. Checked by hand on four books
(OUP 2024 *Swinglines*, 155 references; a Velbrück volume on the musical work,
with Steen-Andersen as its case, 137; an OUP book on music and martial arts, 136;
*Preprogrammed*, Luminos, 154). By a looser
heuristic (same source, same record type, identical reference count of 20 or more)
the terminal run has about **87 such extra rows from nine books, roughly 69 of them
already in the browser run** (matched by title, and titles like "Introduction"
match loosely). The worst case: *Swing Rhythm in Classic Drum Breaks* has 21
citing works since 2022, and **18 of them are *Swinglines* and its chapters**.
About 40 of the 87 sit under timing sources (the swing and West African drumming
papers, *Musical Rhythm in the Age of Digital Reproduction*, *Time in Indian
Music*), and the rest under *Ancient Greek Music*,
*African Tone-Systems*, *Digital Signatures*, Thoresen and Seeger.

**The same work is listed more than once.** Preprint and published versions, or
duplicate records, appear as separate rows: 37 repeats within a source in the
browser run and 58 in the terminal run.

So the counts in "The shape of it" measure *rows*, and a quarter of rows is not a
quarter of works. The direction of the finding survives. The individual items that
carry it are journal articles, not book fragments, and the new rows add more of
them. The size of the finding is less certain than the table makes it look.

### The bridge problem, twice

- `deardorff2006identification` now contributes 25 rows, and **22** are out of
  field. The five new ones are teachers' acculturation in schools, study abroad,
  medical professionalism, hospitality and young language learners. 1,607 works
  have cited it since 2022, more than twice the next largest source.
- `The Improvisational State of Mind` behaves the same way. **11 of its 25 rows** are
  psychedelics, consciousness, perinatal neuroscience or STEM learning (8 distinct
  works; one preprint appears three times, another twice). Its most-cited citing work is *Effects
  of External Stimulation on Psychedelic State Neurodynamics*.

The general property stated above holds, with a sharper edge. Ranking by the
citing work's own citation count favours high-traffic neighbouring fields, so an
interdisciplinary source puts its noise at the *top* of its list.

### New rows worth opening

Timing and metre, continuing the Keil / Polak & London distinction in `docs/09`:

- **"Bins, Spans, and Tolerance: Three Theories of Microtiming Behavior"**:
  *Music Theory Spectrum* 2023. Three competing accounts of what microtiming is,
  which is the distinction `docs/09` says must not be collapsed.
- **"Hidden assumptions of integer ratio analyses in bioacoustics and music"**:
  *Annals of the NYAS* 2025. A critique of the method behind the rhythm-priors
  studies.
- **"Long-form Non-isochrony and Implicit Music Theory: Cyclicity and Entrainment in
  Colombian Cantos de Boga"**: *Music Theory Spectrum* 2025. Cites both Arom's
  *African Polyphony and Polyrhythm* and Polak's *Rhythmic Feel as Meter*.
- **"Culture in psychology and neuroscience: Concepts, relevance, and empirical
  evidence in rhythm perception"**: *Physics of Life Reviews* 2026. Cites both
  *Rhythmic Feel as Meter* and Polak & London.
- **"Revealing rhythm categorization in human brain activity"**: *Science Advances*
  2025. **"Rhythmic Regularity Beyond Meter and Isochrony"**: *Revue musicale
  OICRM* 2025.
- **"Global musical diversity is largely independent of linguistic and genetic
  histories"**: *Nature Communications* 2024.

Participatory discrepancies and playing apart, under Keil:

- **"Trade-offs in Coordination Strategies for Duet Jazz Performances Subject to
  Network Delay and Jitter"**: *Music Perception* 2024. The collaboration nut,
  measured. Networked playing is where the discrepancies get removed or distorted.
- **"Musical engagement as a duet of tight synchrony and loose interpretability"**:
  *Physics of Life Reviews* 2022, 38 citations, via the improvisation source.
- **"Mariachi Accompaniment: Cultural Bearers for Communal Conviviality"**:
  *twentieth-century music* 2023. **"A text mining approach to the use of 'groove'
  in everyday language"**: *Psychology of Music* 2023.

Representation and the classical default:

- **"Children's associations between space and pitch are differentially shaped by
  language"**: *Developmental Science* 2022. Pitch-as-height, shown to depend on
  language.
- **"Geometric properties of musical scales constitute a representational primitive
  in melodic processing"**: *iScience* 2025.
- **"Challenging score-centered norms in Western classical higher music
  education"**: *Frontiers in Psychology* 2026. **"Autonomous or controlled
  interpreters? Model of Werktreue internalization for classical musicians"**: same
  journal, 2024.
- **"'It's cleaner, definitely': Collaborative Process in Audio Production"**:
  *CSCW* 2022. **"Pedagogy of the Producer: DAWs, YouTube, and Music Education"**:
  *IJME* 2026.

As above, this is titles and venues. `landing` at best.
