<!-- Generated from representation-cabinet.html. Source of record: html/representation-cabinet.html -->

*MTILT · survey before tools*  

# Representation Cabinet

Nine channels through which music has been written down, spoken, drawn, measured and coded — what each one puts within reach, what each one makes disappear, and which ones your tools already speak.

v0.1 · September 2026 Curation, not exhaustiveness 
*The cut that matters most*

## Prescriptive or descriptive

The rundown you were hoping for exists, and the sharpest one comes from your own discipline rather than from MIR. Charles Seeger drew the distinction in 1958: a music-writing is *prescriptive* when it is a set of instructions to someone who already knows the tradition, and *descriptive* when it is a report of what actually sounded. Staff notation is prescriptive and is routinely mistaken for descriptive — which is precisely the error that made early comparative musicology transcribe other people's music into an apparatus that could not hold it.

Every system below sits somewhere on that axis, and most of the pedagogical damage happens when a prescriptive system is presented as though it were a neutral description of the sound. That is the deep version of the pianocentrism complaint: the piano keyboard is an instruction set for one instrument, presented as the shape of pitch itself.

> **Prescriptive**  
> Instructions to a performer inside a tradition. Compact because it can assume everything the reader already knows. Useless — or misleading — outside it. staff · tablature · jianpu · bol · Ziffers · UPI **Descriptive**  
> A report of what sounded, made by someone attending to it. Assumes less, says less about what to do, and is far harder to read back into action. spectrogram · TUBS transcription · SASO symbols

Milton Babbitt's related three-way split — graphemic, acoustic, auditory — separates the mark, the signal, and the thing heard. The three rarely line up, and no representation covers more than two of them well.

*One pattern*  

## The same eight steps, four ways

*\[Figure: One rhythmic pattern of three onsets in eight steps, shown as a row of boxes, a ring, a binary string, and drum syllables.\]*

*Three onsets across eight steps. Nothing about the pattern changes between panels; what is easy to think about changes completely. The grid invites you to count. The ring makes the question "where does it start?" visible and unanswerable. The binary string invites arithmetic — rotate it, invert it, add it to another. The syllables invite you to say it, and travel without paper.*

*The cabinet*  

## Nine channels

Grouped by the substrate a system runs on rather than by what it encodes, because the substrate is what determines who can use it, where it travels, and what it silently drops.

*01*  

### Syllabic — spoken and memorised

Sound stored in the mouth. No artefact, no literacy requirement, no device. The oldest and by far the most portable channel, and the one most completely absent from music-technology tooling.

**Bol**  
*Hindustani · tabla, pakhawaj*  

Syllables that name drum strokes: each *bol* is simultaneously a sound, a hand position, and a word you can chant. Compositions are recited before they are played, and the recitation *is* the piece.

dha dhin dhin dha \| dha dhin dhin dha dha tin tin ta \| ta dhin dhin dha *Puts in reach*  

Timbre and stroke identity, inseparably from rhythm. You cannot notate a bol without notating which sound it is.

*Makes disappear*  

Absolute duration and pitch. And it is unusable outside the tradition that assigns the syllables.

**In your tools** Nothing. A workshop could use it tomorrow with no tool at all.

**Konnakol / solkattu**  
*Karnatic · vocal percussion*  

The South Indian counterpart, built on short syllable cells (`ta ka di mi`, `ta ki ta`) that combine into long rhythmic structures. It is taught before any instrument and performed in its own right.

ta ka di mi ta ki ta ta ka di mi 4 3 4 (= 11) *Puts in reach*  

Grouping and additive structure — the arithmetic of rhythm, felt as speech rather than counted.

*Makes disappear*  

Pitch entirely, and any simultaneity: it is a single stream.

**In your tools** Nothing — though it maps cleanly onto the additive patterns Serpe already generates.

**Tonic sol-fa, Kodály hand signs**  
*Curwen, 1840s · Kodály, 20th c.*  

Movable-*do* syllables, with Curwen's system adding a hand shape per degree so that pitch relation becomes a gesture. Built explicitly for people who could not read staff notation.

*Puts in reach*  

Scale-degree function — that a note has a *role*, not just a location. Transposition becomes trivial and invisible.

*Makes disappear*  

Absolute pitch, and anything chromatic or modulating without awkward extension.

**In your tools** Nothing, though ProgGenie's degree thinking is the same idea rendered visually.

*02*  

### Numeric — ciphers and degrees

A single family, repeatedly reinvented, that travelled further than almost anything else. Souhaitty, a Franciscan, proposed numbers for chant in the 1660s; Rousseau argued for them in 1742; Galin, Paris and Chevé systematised them in nineteenth-century France; from there the idea reached China as *jianpu* and Indonesia as *not angka*. Ziffers is the live-coding descendant of the same lineage.

**Jianpu / not angka**  
*via Galin-Paris-Chevé · China, Indonesia*  

Degrees 1–7 with a stated key, underlines halving duration, dots marking octave, 0 for rest. Compact enough to be printed between lines of song text, which is much of why it spread.

1=C 4/4 3 5 \| 3 5 \| 6 5 3 2 \| 1 - - - \| *Puts in reach*  

Relative pitch and transposition as a single edit. Typeable, printable anywhere, learnable in minutes.

*Makes disappear*  

Polyphony and voice-leading — it is built for melody. Also anything outside the seven degrees.

**In your tools** The degree logic underlies ProgGenie; the notation itself isn't surfaced anywhere.

**Ziffers**  
*Sonic Pi · live coding*  

Numbered notation rebuilt as a live-codable string: degrees with duration letters, plus repeats, random choice, arrays and Roman-numeral chords. Its author chose numbers precisely because note names exclude people.

zplay q5353 5653 4242 4542 *Puts in reach*  

Melody as an editable, transposable, mutatable string. Change the key parameter, keep the numbers.

*Makes disappear*  

Everything continuous — the shape of a note rather than its identity.

**In your tools** Closest kin to your UPI strings, and a direct precedent for typed musical input.

**Pitch-class integers, binary and hex patterns**  
*set theory · drum machines · your own tools*  

Pitches as residues mod 12 (`{0,2,4,7,9}`); rhythms as bit strings or as onset arrays. The representation that makes musical material arithmetically operable.

{0,2,4,7,9} pitch-class set 10010010 onsets as bits \[0,3,6\]:8 onsets as indices 0x94:8 the same idea, packed *Puts in reach*  

Transformation as computation: rotate, invert, complement, intersect. Two patterns can be compared by an operation rather than by an opinion.

*Makes disappear*  

Everything about weight, feel and emphasis. A bit string cannot tell you which onset matters.

**In your tools** Central — PickPCS, PitchFold, Serpe and the rhythm explorer all run on this.

**Nashville Number System**  
*US session musicians, 1950s–*  

A chart of chord degrees rather than chord names, written fast and read by a band that has never rehearsed the song. Harmony as function, in the working vernacular of people who are paid to be quick.

\| 1 \| 6- \| 4 \| 5 \| *Puts in reach*  

Harmonic function and the fact that the same progression recurs across songs in different keys.

*Makes disappear*  

Voicing, register, instrumentation — deliberately, so the players decide.

**In your tools** ProgGenie's territory; worth checking whether its leadsheet can display this way.

*03*  

### Grid — boxes and steps

Discrete time as equal cells. The channel that made drum machines legible, and the one that ethnomusicology reached for when staff notation could not hold West African rhythm.

**TUBS**  
*Koetting, 1970 · after Philip Harland*  

The Time Unit Box System: a row of equal boxes, filled or empty. Devised for transcribing West African drumming without imposing metric hierarchy on it.

\| x \| \| \| x \| \| \| x \| \| *Puts in reach*  

Pattern as shape, with no assumption about which box is strong. Comparison between patterns is visual and immediate.

*Makes disappear*  

Micro-timing — the thing that often makes the music. Equal boxes assert an evenness that may not be there.

**In your tools** Implicit in Serpe and the rhythm explorer; not offered as an explicit view.

**Piano roll**  
*every DAW · Building Blocks*  

Time across, pitch up, duration as bar length. The de facto notation of contemporary music-making, and the one Audible Genius uses to teach fifty hours of material with the staff removed.

*Puts in reach*  

Contour and duration directly, plus editing as dragging. Nothing has to be named to be moved.

*Makes disappear*  

Function and spelling — and it usually keeps a keyboard down its left edge, so the removal of the staff leaves pianocentrism untouched.

**In your tools** The obvious candidate for scale-driven contrast instead of black-and-white keys — PitchFold already computes the sets.

**Pad and fingering grids**  
*isomorphic layouts · Exquisite Fingerings*  

Pitch laid out on a two-dimensional lattice, where an interval is the same physical move everywhere. Guitar fretboards approximate it; Jankó, Wicki-Hayden and modern pad controllers commit to it.

*Puts in reach*  

Interval as gesture, and transposition as translation — a shape keeps its sound anywhere on the grid.

*Makes disappear*  

Register cues that a keyboard's irregularity provides; the grid is uniform and therefore unlandmarked.

**In your tools** Exquisite Fingerings, and the grid option in Chord Dictionary.

*04*  

### Cyclic — rings and lattices

Geometry standing in for musical space. The channel where structure becomes shape and the question of a beginning quietly disappears.

**Rhythm necklace / ring**  
*Toussaint · bell-pattern analysis*  

A cycle drawn as a circle with onsets around it. Rotations of a pattern become visibly the same object, which is exactly what a linear notation cannot show.

*Puts in reach*  

Rotational identity, symmetry, and evenness. Two patterns that look unrelated in a bar reveal themselves as one.

*Makes disappear*  

Any sense of a downbeat, and any pattern whose cycle isn't fixed.

**In your tools** PickPCS's ring, the rhythm explorer's circular display, Chord Dictionary's circle option.

**Circle of fifths · Tonnetz**  
*Heinichen 1728 · Euler 1739*  

Pitch arranged by interval relation rather than by height. The Tonnetz in particular makes chord transformation a short move on a lattice rather than a rule to memorise.

*Puts in reach*  

Proximity as harmonic relatedness — why some changes feel smooth and others don't, without naming a single chord.

*Makes disappear*  

Time, entirely. These are maps of a space, not of a piece.

**In your tools** Partly present in Chord Dictionary's circle view; the Tonnetz isn't there.

*05*  

### Positional — tablature

Notation of what the body does, not of what results. The oldest widespread alternative to pitch notation in the West, and still the way most guitarists read.

**Tablature**  
*lute, vihuela, guitar · gongche · sheng*  

Lines are strings or holes; numbers or letters are positions. It tells you where to put your fingers and says nothing about which note that is.

e\|--0--3--0--\| B\|--1--0--1--\| G\|--0--0--0--\| *Puts in reach*  

Playability immediately, and idiom — which voicings an instrument actually falls into.

*Makes disappear*  

Pitch identity and anything transferable to another instrument. It is the most prescriptive system here.

**In your tools** Exquisite Fingerings is a tablature in the general sense; guitar tab itself isn't offered.

*06*  

### Drawn — continuous marks

Where the mark is not a symbol standing for a sound but a trajectory the sound follows. This is DrawnQurve's family, and it has a serious lineage.

**UPIC**  
*Xenakis, CEMAMu, 1977*  

A drawing table wired to a synthesis engine: you draw on a surface and the drawing is the score, the envelope and the waveform depending on which page you are on. The direct ancestor of every draw-to-sound tool since.

*Puts in reach*  

Gesture and continuous change, with no discretisation anywhere. Anyone who can draw can make sound.

*Makes disappear*  

Repeatability and discussability — two curves that sound alike may look nothing alike.

**In your tools** DrawnQurve is squarely in this line and could say so.

**Graphic scores**  
*Cardew's *Treatise* · Cage · Brown · Haubenstock-Ramati*  

Scores that supply no key at all. *Treatise*'s 193 pages carry no performance instructions whatsoever; the performer's interpretation of the marks is the work.

*Puts in reach*  

That reading a score is an act of interpretation — visible here because nothing else is holding it up.

*Makes disappear*  

Any determinate sound. Two readings share nothing but the page.

**In your tools** Nothing — but this is the cheapest possible workshop material and needs no software.

*07*  

### Signal-derived — measured from the sound

The only genuinely descriptive channel in Seeger's sense: nobody decides what goes in, the analysis does. This is where MIR actually lives, and it is entirely absent from your suite.

**Spectrogram / sonogram**  
*Sonic Visualiser · Praat · Audacity*  

Time against frequency with intensity as brightness. It shows what is present in the sound regardless of whether anyone intended it or has a word for it.

*Puts in reach*  

Timbre, noise, inharmonicity, breath, room — everything conventional notation discards. It also shows that a "note" is a smear, not a point.

*Makes disappear*  

Intention and structure. It cannot tell you what was a mistake, and it is unreadable as instructions.

**In your tools** Nothing. The largest single gap in the suite.

**The listening score**  
*Wehinger for Ligeti's *Artikulation*, 1970*  

A hand-made graphic transcription of a finished electronic piece, built so that listeners could follow sound that had never been notated. Neither prescriptive nor measured — a third thing, made to be read while hearing.

*Puts in reach*  

That a representation can exist purely to support listening, with no performance function at all.

*Makes disappear*  

Reproducibility — it describes one recording and nothing else.

**In your tools** Nothing, and arguably the most MTILT-shaped object on this page.

*08*  

### Morphological — describing the sound object

Your timbre track, and it is further developed than it looks. Schaeffer's typo-morphology has a working, taught, symbol-bearing descendant.

**Typo-morphology → Aural Sonology**  
*Schaeffer 1966 · Thoresen & Hedman 2007 · Sköld 2020*  

Schaeffer's classification of sound objects, reduced by Thoresen from roughly 28 categories to 15 and given an actual symbol set for analysis — "spectromorphological analysis of sound objects" — then extended by Sköld into a notation meant for composing rather than only describing, with spectrum type, spectral width and density, granularity and amplitude envelope on a hybrid pitch-frequency staff.

*Puts in reach*  

A vocabulary and a set of marks for what a sound *is* — the dimension no other channel addresses. It also comes with a listening discipline attached.

*Makes disappear*  

Nothing much, but it costs: the symbol set has to be learned, which sits awkwardly with bypassing terminology.

**In your tools** Nothing — and this is the track you said you hadn't started. It has a bibliography and a teaching tradition waiting.

*09*  

### Procedural — the pattern as code

Representation as instruction to a machine rather than depiction of a result. Your UPI belongs here, and so does most live coding.

**Pattern languages**  
*TidalCycles · Sonic Pi · your UPI*  

A short string that generates material rather than listing it. `E(3,8)` does not record three onsets; it names an algorithm whose output happens to be three onsets.

E(3,8) Euclidean, generated {100}E(3,8) with an accent layer E(3,8)\|P(5,12) two scenes, cycling *Puts in reach*  

Family resemblance and parametric variation — you can see that two patterns are relatives because their strings are.

*Makes disappear*  

The result. You cannot read the sound off the string without running it, which is a real barrier for a newcomer.

**In your tools** UPI across Serpe and the rhythm explorer — the most developed representation you have.

*10*  

### Staff — the one that usually goes first

Placed last on purpose. It is a strong system with a clear domain, and the argument against it is about its unmarked default status rather than about its capabilities.

**Common Western staff notation**  
*c. 11th century onward*  

Pitch as vertical position on a five-line grid with clef, duration as notehead shape, plus several centuries of accumulated convention.

*Puts in reach*  

Polyphony, voice-leading, large-scale structure and precise coordination between many players. Nothing else here does all four.

*Makes disappear*  

Timbre, micro-timing, any pitch off the twelve, and the labour of learning it — which is the part that does the excluding.

**In your tools** ProgGenie's leadsheet. Keeping it available while refusing it the default slot is the whole position.

*The rundowns you asked about*  

## Where this has been surveyed already

*Ethnomusicology · the one to read first*  
**Seeger, C. (1958). "Prescriptive and Descriptive Music-Writing." *The Musical Quarterly* XLIV(2), 184.**  
Six pages that reframe the whole problem, from inside your own discipline. Free copies circulate. *Computer music · the evaluation framework*  
**Wiggins, Miranda, Smaill & Harris (1993). "A Framework for the Evaluation of Music Representation Systems." *Computer Music Journal*.**  
Proposes two axes — expressive completeness and structural generality — for comparing representations rather than ranking them. Reissued in *Contemporary Music Review* as "Surveying Musical Representation Systems". This is the closest thing to the rundown you were hoping existed. *Reference · the encyclopaedia of codes*  
**Selfridge-Field, E. (ed.) (1997). *Beyond MIDI: The Handbook of Musical Codes*. MIT Press.**  
A code-by-code handbook of symbolic representations, each described by someone who worked with it. Pre-dates most of the web but remains the fullest single inventory. *Venue · an entire conference on this question*  
**TENOR — International Conference on Technologies for Music Notation and Representation.**  
Running since 2015, proceedings open at tenor-conference.org. Sköld's timbre-notation paper is in the 2020 volume. If you want people already arguing about exactly your question, they are here. *MIR · the modern comparison*  
**"Symbolic Music Representations for Classification Tasks: A Systematic Evaluation." ISMIR 2023.**  
Evaluates symbolic representations against each other empirically. Narrower than the others — it asks which representation a model learns best from — but it is the current state of the MIR side. *Sound objects · the timbre bibliography*  
**Thoresen, L. with Hedman, A. (2007). "Spectromorphological analysis of sound objects: an adaptation of Pierre Schaeffer's typomorphology." *Organised Sound* 12(2).**  
The paper that turned Schaeffer into a usable analytical notation. Open copies available via EMS Network and CCCM. 
*Coverage*

## Which channels your suite speaks

**Numeric**  
**Strong**  
PCS, bits, onset arrays everywhere **Grid**  
**Strong**  
Pads, Chord Dictionary, leadsheet **Cyclic**  
**Strong**  
PickPCS ring, circular displays **Procedural**  
**Strong**  
UPI — your most developed one **Drawn**  
**Present**  
DrawnQurve **Positional**  
**Partial**  
Exquisite Fingerings **Staff**  
**Partial**  
ProgGenie leadsheet **Syllabic**  
**Absent**  
Needs no tool at all **Signal-derived**  
**Absent**  
No spectrogram anywhere **Morphological**  
**Absent**  
The timbre track, unstarted

**The shape of the gap is specific.** Your suite is strong across every channel that is visual and symbolic, and empty across the two that aren't: the spoken one and the measured one. Both of those are the ones that carry timbre. That is not a coincidence — it is the same absence, approached from opposite ends.

The cheap end of it needs no software. Bol and konnakol are usable in a room tomorrow, and they teach rhythm-with-timbre in a way nothing on a screen currently does. The expensive end — a spectrogram view, or morphological descriptors — is real work, but Thoresen and Sköld mean you would not be starting from Schaeffer's raw typology.

**On sources.** Seeger 1958, the Thoresen and Sköld papers, Ziffers, TENOR, the jianpu lineage and the Wiggins framework are all verified against primary or publisher pages. Specimen notations above are illustrative — the bol is a standard teentaal theka and the tab is invented for the example. Dates given for Toussaint's rhythm-necklace work, Koetting's TUBS and UPIC are from general reference rather than the primary texts.
