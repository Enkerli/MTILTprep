# MTILT reference package

**v0.1 — September 2026.** Assembled for *MusicTech: Inclusive Learning & Teaching*.

Everything here is a **map**, not an instruction. The frameworks in sections A–H were
written to make musical learning assessable; MTILT is not trying to do that. They are
collected because knowing where the well-trodden paths run is useful even — especially —
when you intend to leave them.

## Contents

```
mtilt.bib          BibTeX, 46 entries, grouped and annotated
mtilt.csl.json     CSL-JSON, same set (drag into Zotero)
fetch-pdfs.sh      downloads the 19 open-access PDFs into pdf/
pdf/               empty until you run the script — see note below
README.md          this file
```

### Why `pdf/` is empty

The session that assembled this package sits behind an organisational egress policy.
Every host was refused at the proxy with a 403 — `nationalartsstandards.org`,
`education.gouv.qc.ca`, `aec-music.eu`, `act.maydaygroup.org`, `tenor-conference.org`,
and the rest. Nothing was blocked by the sites themselves, and nothing here is paywalled.
Run `./fetch-pdfs.sh` on your own machine and the 19 files land in `pdf/`.

---

## A. Curricular frameworks

| Key | What it is | Why it's here |
|---|---|---|
| `nccas2014` | US National Core Arts Standards | The dominant Anglophone structure. Creating / Performing / Responding / Connecting |
| `meq2001arts` | Programme de formation de l'école québécoise | Your jurisdiction. *Apprécier* explicitly carries a sociocultural dimension |
| `dfe2021mmc` | England Model Music Curriculum | The repertoire-list argument, reopened |

## B. Professional / higher education

| Key | What it is | Why it's here |
|---|---|---|
| `aecpolifonia` | AEC/Polifonia learning outcomes | The fullest statement of what a trained musician is meant to do. Improvisation as both skill and knowledge |

## C. Psychometric models

| Key | What it is | Why it's here |
|---|---|---|
| `mullensiefen2014goldmsi` | Goldsmiths Musical Sophistication Index | **Flagged.** Widens the range of what counts while keeping the ranking. "Time and money spent on music" is cultural capital measured as expenditure. Read it for the *active engagement* construct, not for the scale |
| `jordan2012komus` | KoMus competence model | Binds perceiving **and** contextualising as one competence. Closest formal statement of the MTILT position |

## D. Theoretical models of musical activity

`swanwick1979basis` · `elliott1995matters` · `small1998musicking`

Written partly against the narrowness of school music. Swanwick demotes technique and
music history to supporting roles; Elliott makes musicianship procedural; Small makes
music a verb and thereby resists competency framing entirely.

## E. Informal and self-determined learning

`green2008informal` · `higgins2012community` · `hase2013heutagogy` · `blum2020ungrading`

The family closest to MTILT's actual values. Green's five principles are a description
of how people already learn, converted into pedagogy. Heutagogy's distinction between
**capability** and **competency** is the precise vocabulary for the mismatch:
competency is performance in known contexts, capability is what you do in unfamiliar ones.
Higgins's community music is a principled defence of not pre-specifying outcomes.

## F. Cultural and civic competence

`coe2018rfcdc` · `lind2016culturally` · `deardorff2006identification`

**The catch:** the music-specific literature specifies the *teacher's* competence. The
Council of Europe framework is written for the learner, which makes it the better borrow.
It also proves dispositions can be named — *tolerance of ambiguity* is competence #9 —
if you give up short-term assessability.

## G. Clinical

`amtacompetencies` — where "singing as breathing exercise" actually lives.

## H. Critical literature

`mullen2019standards` · `attali1977bruits`

No framework contains its own critique. The commodification aim lives in political
economy, not music education.

## I. Representation and notation

`seeger1958prescriptive` · `wiggins1993framework` · `selfridgefield1997beyondmidi`
`tenorconference` · `skold2020notation` · `thoresen2007spectromorphological`
`schaeffer1966traite` · `toussaint2013geometry` · `weibel2020upic`

Seeger's prescriptive/descriptive distinction is the sharpest cut, and it comes from
ethnomusicology rather than from computer music. TENOR is an entire conference on
the question.

## J. Timbre and sound design

`saitis2019semantics` · `wallmark2019crosstalk` · `reymore2020timbretrait` · `farnell2010designing`

Three semantic dimensions recur across studies and languages — brightness (spectral
centroid), texture/roughness (amplitude modulation in critical bands), fullness
(fundamental strength, inharmonicity). Which is why *bright* and *hollow* hold up
where *cinematic* does not.

## K. Listening practices and the two ditches

`schafer1967earcleaning` · `schafer1992soundeducation` · `oliveros2005deep` · `csikszentmihalyi1990flow`

Schafer starts from sounds learners already encounter. Oliveros separates hearing
(involuntary) from listening (voluntary) — a candidate remedy for over-analysis, since
Deep Listening is inclusive attention rather than the selective, hierarchising kind that
training installs. Csikszentmihalyi's challenge–skill balance is the studied form of
the desire/skill gap: anxiety above the diagonal, boredom below it.

## L. The project's own ground

`enkerli2019son` — appropriation as the operative concept, applicable to frameworks
as readily as to technology.

---

## Two corrections carried into this package

**Acoustics.** Filed under critique, not under crossings. The observation is not that
acoustics inspires music theory — it is that music theory *invokes* acoustic phenomena
to justify principles and then abandons the connection. The overtone series is offered
as the ground of scales, then everything reverts to 12TET without the approximation
ever being examined. Made and left. That pattern — adopt a system, break it silently
for convenience — is the same shape as the enharmonic problem (`E♯` respelled as `F`
in a C♯∆ chord, which destroys the triad's readability in exchange for a moment's ease).
Both are bugs in the teaching, not in the acoustics.

**Sophistication.** The Gold-MSI stays in the package because its *active engagement*
construct is genuinely rare — it credits a musical life spent listening, collecting and
attending. But the construct name does the thing MTILT opposes: it ranks. And one
subscale measures time and money spent, which is cultural capital under another name.
Keep the idea, leave the scale.
