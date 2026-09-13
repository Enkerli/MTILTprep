<!-- Generated from mtilt-encounters.html. Source of record: html/mtilt-encounters.html -->

*MusicTech: Inclusive Learning & Teaching*  

# Encounters before names

Seven workshop scenarios built from tools that already exist, each designed so the phenomenon arrives before anyone needs a word for it — and so the session leaves field material behind.

Scenario set v0.1 Self-paced · no fixed occasion Grounded in Enkerli 2019, *Son propre son* 
*The criterion*

## What makes a session MTILT-shaped

The distinction you draw — phenomena rather than concepts — becomes operational when you treat it as a property of the *setup* rather than of the subject matter. A concept is nameable and transferable; a phenomenon is encounterable and describable. A session is MTILT-shaped when it reliably produces an encounter, and when naming what happened afterwards is optional, learner-generated, and never the assessment.

Four tests fall out of that, and three of them come straight from your own critique of the Maker sphere's meritocracy. They are cheap to apply and they disqualify things quickly.

**The mute test**  
*Could someone do the whole activity, and notice the thing, without anyone using a technical term?*  
*If the activity collapses without the vocabulary, it is a concept lesson in costume.*  
**The no-wrong-note test**  
*Is there a failure state a newcomer can hit and read as *I'm not musical*?*  
*Meritocracy enters through failure states, not through rhetoric.*  
**The description test**  
*Does each person leave with something of their own to say about what happened?*  
*Learning evidence and ethnographic yield are the same object here.*  
**The diversity test**  
*Does the setup reproduce the narrow default palette, or let other sound in?*  
*The 808 problem: tens of thousands of samples, a few hundred clarinets.*  

*The house form*

## The answering instrument

You have already run the best version of this. At the Labo symphonique, children played your Alesis keyboard while you answered on the WX-11 — watching which keys they pressed so you could reply in a way that facilitated their own listening. That is not a warm anecdote; it is a reproducible workshop architecture, and it happens to resolve the hardest practical constraint in your current toolkit.

**Participants act on an open surface. You answer on the instrument.** The learning lives in the call and response, not in an explanation that precedes it. This form passes the mute test structurally — you cannot explain while you are playing — and it converts your AUv3 suite from something participants would need to install into something only you need to run.

*Practical constraint*  

## What can actually be in participants' hands

Sorting the repositories by who can reach them is the most consequential thing in this document. The split is clean, and it is not a deficiency — it is what makes the answering-instrument form the right default rather than a compromise.

| Tool                    | Surface            | What it puts in reach                                                                                  |
|-------------------------|--------------------|--------------------------------------------------------------------------------------------------------|
| rhythm_pattern_explorer | Any browser        | Rings, not staves. UPI notation, Euclidean / Barlow / anti-Barlow generators, rotation, accent layers. |
| pitch-ontology          | Any browser        | Concepts, claims, journeys, sources — pitch vocabulary shown as situated rather than given.            |
| patch-panel             | Any browser        | A cabinet of modular systems with every claim evidence-tagged.                                         |
| manifold                | Any browser / YAML | ~30 controller profiles; config / discrete / continuous; a stub→verified status ladder.                |
| SwiftVane               | Facilitator's rig  | A breath-first, MPE-aware wind voice. Blown, not struck.                                               |
| SwiftDrawnQurve         | Facilitator's rig  | A drawn curve, looping as CC / pressure / bend.                                                        |
| SwiftPitchFold          | Facilitator's rig  | Pitch-class-set quantizing — a keyboard where every note belongs.                                      |
| ProgGenie               | Facilitator's rig  | Chord progressions generated underneath whatever someone is playing.                                   |
| SwiftMIDIcurator        | Facilitator's rig  | A library of clips you can audition, judge, and find again.                                            |

*Scenarios · MTILT-S*  

## Seven encounters

Records, not a sequence — the identifiers are catalogue numbers in the same sense Manifold's are, and the set is meant to grow one entry at a time. Each is written to be run as it stands, with the tools in their current state.

*MTILT-S-001*  

*Browser · 20–40 min · 2–20 people*

### Same count, different feel

> *Phenomenon*  
> Where a cycle starts changes everything about it, while nothing measurable about it has changed.

*\[Figure: Two eight-step rhythm rings. The first has filled onsets at positions 0, 3 and 6. The second has the same three onsets rotated by one step, at positions 1, 4 and 7.\]*

*Setup*  

Everyone opens the rhythm pattern explorer on whatever device they brought. One shared speaker. If devices are scarce, one screen and a keyboard that gets passed.

*Sequence*  

- Everyone types `E(3,8)`. Same three numbers, same result, everywhere in the room.
- Rotate it — `E(3,8)@#1`, then further. Listen after each turn.
- Each person keeps the rotation they like. Play them in turn; the room claps along with each.
- Ask only: which ones were easy to clap to, and which ones fought you?

*Likely noticings*  

- Some rotations have an obvious place to come in; others don't.
- Two people will start the same ring in different places and both be right.
- The ring has no beginning until someone gives it one.

*Crossings*  

- **Mathematics.** Rotations of a necklace are an equivalence class — and here the class is audible, not illustrated. `E(3,8)` *is* Euclid's algorithm applied to fair division.
- **Computer science.** `10010010`, `0x94:8` and `[0,3,6]:8` are the same object in three notations. Multiple representation, made hearable.

*Access & diversity*  

Works on a phone. No install, no account, no audio skill, no failure state — every string that parses is a pattern. For the diversity test, replace the default click with sounds participants record in the room before you start; the pattern stays, the palette stops being someone else's.

*Field prompt*  

Write down the words people reach for when they describe the difference between two rotations. Not their judgements — their *terms*. This list is a direct contribution to the rhythm side of pitch-ontology.

mute ✓ no-wrong-note ✓ description ✓ diversity — needs the sample swap *MTILT-S-002*  

*Browser · 25–45 min · 4–20 people*

### The pattern that isn't yours

> *Phenomenon*  
> The sense that a rhythm is *right* is produced by something, and that something can be inverted on purpose.

*Setup*  

Same browser tool. You drive, or everyone follows along. The three generators are already there.

*Sequence*  

- Play `E(3,8)`, `B(3,8)` and `W(3,8)` unlabelled, in a shuffled order, more than once.
- Ask which one makes sense, which is wrong, which is interesting. Take a show of hands. Note the disagreements.
- Only then say what they are: one spreads onsets evenly, one maximises metric indispensability, one deliberately inverts it.
- Play `W` patterns again, now that they have a reason to exist.

*Likely noticings*  

- Near-unanimity on which is "wrong" — followed by discomfort when it turns out to be the deliberate one.
- Someone will defend the anti-Barlow pattern, and the room will split.
- Second hearings change verdicts. Nobody's ear was fixed.

*Crossings*  

- **Social science.** A norm felt from the inside as nature, then shown to be a weighting function. This is the whole lesson of enculturation in fifteen minutes, with the participants as their own informants.
- **Mathematics.** Indispensability is a ranking over positions. Inverting a ranking is a legible operation.

*Why it carries the inclusion work*  

This is the strongest single move available to you, because it converts *I'm not musical* into *my ear was trained on something specific* — without dismissing anyone's taste and without asking anyone to perform. It is also honest: you are not telling them their intuition is wrong, you are showing them it has a shape.

*Field prompt*  

The vocabulary used for `W()` patterns is where enculturation becomes visible in language. Record it verbatim, including the dismissive words.

mute ✓ no-wrong-note ✓ description ✓ diversity ✓ *MTILT-S-003*  

*Answering instrument · 30–50 min · 3–12 people*

### Draw the shape of a sound

> *Phenomenon*  
> A drawn shape and a change in sound are the same object; speed up the loop far enough and the shape stops being a rhythm and becomes a timbre.

*Setup*  

Paper and markers for everyone. DrawnQurve on your iPad, routed to a voice with an obvious response. You trace each person's drawn curve into the app; if there is a spare device, it gets passed instead.

*Sequence*  

- Ask for a curve that sounds like *getting closer*. Then *hesitating*. Then *a question*.
- Trace it, loop it, let them hear it. They revise the drawing and you trace again.
- Take one curve and speed the loop up, steadily, past the point where it stops being a pulse.

*Likely noticings*  

- How fast the curve moves matters as much as how far it goes.
- Two people draw the same idea very differently and both work.
- The moment the loop stops being countable and becomes a tone — nearly everyone reacts to this.

*Crossings*  

- **Mathematics.** The curve is a function of time, drawn by hand. Periodicity, rate of change, and interpolation are all in the room without being named.
- **Physics.** The rhythm-to-pitch crossing is frequency. It is one continuum, and here it is one gesture.

*Access & diversity*  

Drawing is the lowest-barrier input in the whole set: people who are certain they can't play will draw. Keep the paper stage — going straight to the tablet reintroduces a device gate for no gain.

*Field prompt*  

Collect the metaphors. *Hesitating*, *getting closer* — the words participants use for shapes are exactly the situated vocabulary pitch-ontology is trying not to presuppose.

mute ✓ no-wrong-note ✓ description ✓ diversity ✓ *MTILT-S-004*  

*Answering instrument · 20–40 min · 2–8 people*

### One breath, no fingering

> *Phenomenon*  
> Expression lives in a continuous stream rather than in discrete events, and the body already knows how to shape one, because it knows how to speak.

*Setup*  

Vane, or a wind controller, on your rig. One instrument, passed. Say nothing about fingering and do not demonstrate a melody first.

*Sequence*  

- Three tasks, in order: make it get louder without getting higher; make it waver; make it stop without stopping blowing.
- Each person takes a turn. Everyone else listens; nobody comments on skill.
- Then two people at once, if you have a second controller — one holds, one moves.

*Likely noticings*  

- Louder and higher are bound together until you deliberately separate them.
- The third task is the hard one, and it is where people find the instrument's edge.
- Sustained breath is physically demanding in a way that reframes what wind players do.

*Crossings*  

- **Health and physiology.** Breath control is shared ground with singing, wind playing, meditative practice and speech therapy — a real crossing, not a decorative one, since the object is the same in each.
- **Accessibility.** Breath is available to people for whom a keyboard is not. This is the scenario where the inclusive claim is literal.

*Facilitation constraints*  

Mouthpiece hygiene is a real logistical requirement, not a footnote — plan for disposable or per-person mouthpieces, and say so up front so nobody has to ask. Some participants will find sustained blowing tiring or uncomfortable; make sitting out unremarkable by building a listening role into the activity rather than offering an exemption.

*Field prompt*  

This is where *son propre son* becomes literal. Note what changes in someone's posture between their first and third turn.

mute ✓ no-wrong-note ✓ description ✓ diversity — one instrument limits the palette *MTILT-S-005*  

*Answering instrument + browser · 40–60 min · 3–12 people*

### The mood changed and I didn't do it

> *Phenomenon*  
> Harmony as an environment you are inside rather than an object you build — felt fully, and named afterwards in the participant's own words.

*Setup*  

PitchFold on your rig, quantizing a keyboard to a pitch-class set, so that no note a participant plays can be wrong. ProgGenie underneath if you want motion. The pitch-ontology site open for the second half.

*Sequence*  

- Hand someone the keyboard. Tell them only that every note belongs. Let them play until they stop being careful.
- While they keep playing, change the set underneath them. Say nothing.
- They will hear it. Wait for them to say so.
- Second half: ask the room to name what changed. Write every word on the wall. Then open pitch-ontology's journeys and show that traditions disagree about these names too.

*Likely noticings*  

- Something changed and it wasn't me — which is the harmonic phenomenon, arrived at without a single chord name.
- Playing carelessly produces something good, which contradicts a lot of prior instruction.
- The room's words for the change won't agree, and the disagreement is interesting rather than a problem to resolve.

*Crossings*  

- **Mathematics.** Pitch-class sets are sets under modular arithmetic. Changing the set is changing the membership rule.
- **Anthropology and linguistics.** Collecting the room's words is folk taxonomy in miniature — and showing that *minor* is as situated as whatever they invented is the whole argument of pitch-ontology, demonstrated instead of asserted.

*Why this one ties the project together*  

It closes a loop that runs through your own work, from the Mandinka praise-song naming study to a repository built to avoid unmarked defaults in pitch vocabulary. It is also the clearest case of a workshop feeding a repository: the word-list produced in the room is a contribution to pitch-ontology, with the session as its source. The participants are not learning about the project; they are adding to it.

*Field prompt*  

Keep the wall list photographed and dated, with the group's composition noted. Over several sessions this becomes comparative data rather than anecdote.

mute ✓ no-wrong-note ✓ description ✓ diversity ✓ *MTILT-S-006*  

*Browser + whatever's in the room · 45–90 min · 2–10 people*

### What does this thing actually send?

> *Phenomenon*  
> Documentation is made by people, and a claim has a status that someone earns by testing it.

*Setup*  

Manifold open. Any controllers anyone brought, plus a MIDI monitor. A text editor for YAML.

*Sequence*  

- Pick a controller. Before connecting it, everyone guesses what it sends when you do a given thing.
- Connect it and look. Compare against the manufacturer's description.
- Sort what you found into config, discrete and continuous. Write the profile stub.
- Find an existing stub in Manifold, test it against the hardware in the room, and move it up the ladder.

*Likely noticings*  

- The marketing description and the actual behaviour differ, reliably.
- The three-way split isn't obvious until you try to place a real parameter in it — and the hard cases are the interesting ones.
- "Verified" is not a property of the data; it is a record of what somebody did.

*Crossings*  

- **Research methods.** Claim, evidence, provenance, status — the same epistemics patch-panel's evidence tagging runs on, learned by doing one.
- **Computer science.** Protocols, schemas, and a first contribution to a public repository that isn't code.

*Why it matters for inclusion*  

Contributing a verified profile is a real, attributed contribution requiring neither musical skill nor programming. That is an on-ramp into the Maker sphere that bypasses exactly the gate your article describes — the one where you have to have done your homework before you are allowed to ask.

*Field prompt*  

Note who volunteers to type and who volunteers to test. The division of labour that emerges here is worth watching across sessions.

mute ✓ no-wrong-note ✓ description ✓ diversity ✓ *MTILT-S-007*  

*Browser · 15–25 min · 4+ people · works as an opener*

### Nobody's counting for us

> *Phenomenon*  
> Independent cycles drift, meet, and drift again — and people correct toward each other without being asked to.

*Setup*  

Four or more devices, each running the rhythm explorer with no shared clock. Different patterns, or the same one started at different moments.

*Sequence*  

- Everyone starts whenever. No conductor, no count-in, no instruction to stay together.
- Let it run long enough to drift — several minutes, longer than feels comfortable.
- Then ask people to get back together, still without a conductor, and watch how they do it.

*Likely noticings*  

- Moments of alignment arrive and pass without anyone producing them.
- Some people cannot resist correcting; others enjoy the drift. Both reactions are data.
- Getting back together requires someone to become a reference, and the group picks one without discussing it.

*Crossings*  

- **Mathematics and physics.** Phasing, least common multiples, coupled oscillators. When two independent cycles realign is a calculable moment that the room can also just wait for.
- **Social science.** Entrainment and coordination without a designated leader — visible, brief, and discussable immediately afterwards.

*Note*  

This one works best as an opener, before anyone has been told what the session is about. It requires no skill whatsoever and it gives the room something shared to refer back to for the rest of the day.

mute ✓ no-wrong-note ✓ description ✓ diversity ✓ 
*Guard rail*

## When a crossing is real

The usual failure mode for music-and-mathematics work is that music becomes a delivery vehicle — a pleasant wrapper around a lesson that was going to happen anyway. You would spot that immediately in someone else's workshop, so it is worth writing the test down.

**A crossing is real when the musical activity and the other domain are looking at the same object, not when one illustrates the other.** Rotating `E(3,8)` does not resemble an equivalence class; it is one. Breath control is not a metaphor for respiratory physiology; it is respiratory physiology. Writing a Manifold profile is not like doing research methods; it is doing them, on a small scale, with a real artefact at the end.

Where that test fails, the honest move is to drop the crossing rather than weaken it. A rhythm session that is only about rhythm is not a lesser session.

*Format*  

## A schema, so the set can grow one entry at a time

This is the part that addresses the vague-deliverables problem directly. You already have two working answers to it — Manifold and patch-panel both stay useful at every stage because a record has a status and the collection never has to be finished. A scenario collection in the same idiom inherits that property: CC0 data, MIT tooling, evidence-tagged, always in a valid state.

    # scenarios/s-001-same-count-different-feel.yaml
    id
    : MTILT-S-001
    title
    : Same count, different feel
    phenomenon
    : >
      Where a cycle starts changes everything about it, while nothing
      measurable about it has changed.
    surface
    : browser          # browser | answering-instrument | hardware | mixed
    tools
    : [rhythm_pattern_explorer]
    duration_min
    : [20, 40]
    group_size
    : [2, 20]
    setup
    : >
      One device per person or one shared screen; a single speaker.
    sequence
    :
      - Everyone enters E(3,8).
      - Rotate and listen after each turn.
      - Each keeps a favourite; the room claps along with each in turn.
    noticings
    :
      - Some rotations offer an obvious entry point; others do not.
      - Two people start the same ring in different places, both correct.
    crossings
    :
      - domain
    : mathematics
        object
    : Rotational equivalence classes; Euclid's algorithm as fair division.
        shared_object
    : true      # false means it illustrates rather than crosses
      - domain
    : computer-science
        object
    : One pattern in binary, hex and onset-array notation.
        shared_object
    : true
    access_notes
    : >
      Phone-capable. No install, account, audio skill, or failure state.
    tests
    :
      mute
    : pass
      no_wrong_note
    : pass
      description
    : pass
      diversity
    : partial       # requires swapping the default sample set
    field_prompts
    :
      - Record participants' terms for the difference between rotations.
    status
    : sketch             # sketch | drafted | run | documented | refined
    sessions
    : []              # links to dated session notes; evidence for every claim above

**sketch**  
Written down, never run. Still a valid entry. **drafted**  
Materials prepared, setup tested alone. **run**  
Done once with real participants; session note attached. **documented**  
Run more than once; noticings are observed, not predicted. **refined**  
Revised on the basis of what the sessions showed.

The important detail is the one Manifold already gets right: the `noticings` field starts as prediction and becomes observation, and the `status` field is what tells you which it currently is. Everything in the seven records above is at `sketch`. That is an honest starting state, not a placeholder.

*Next moves*  

## Three things that fit in an hour

*01*  

#### Retro-document the Labo symphonique

The passage is already written, in the 2019 article. Converting it into the first scenario record costs no new fieldwork, tests the schema against an event that actually happened, and gives the collection an entry at `documented` rather than `sketch` from the start. It will also tell you quickly which fields are wrong.

*02*  

#### Run S-001 on two people at a kitchen table

The lowest-setup scenario in the set, at the smallest scale that still counts as a session. The goal is not to validate the activity — it is to find out whether the field prompt is answerable, because a prompt that produces nothing usable is the most likely defect in this whole design.

*03*  

#### Put `scenarios/` inside an existing repo, not a new one

patch-panel earned its own repository by accumulating first. Let this do the same: start it wherever it is least ceremonious, and promote it once there are five entries and at least one at `run`. Deciding the housing later is consistent with how the rest of your work has gone, and it keeps the first entry from having to justify a repository.

**What's verified here.** The rhythm pattern explorer runs in a browser at `enkerli.github.io/rhythm_pattern_explorer`, with UPI notation covering `E()`, `B()`, `W()`, rotation and accent layers. The pitch-ontology site is live with concepts, claims, journeys and sources. Manifold's config / discrete / continuous split, its ~30 profiles and its stub→verified ladder are as described in its README, CC0 data with MIT tooling. The Swift plug-ins are AUv3, which is what puts them on the facilitator's side of the split.

**What isn't.** Funkstrum's current state could not be checked — its README wasn't reachable — so it is left out of the scenarios rather than guessed at; its gesture-and-harmony separation would suit S-005 well if the tool is still where you left it. The `noticings` in every record are predictions, and the durations and group sizes are estimates. Both are exactly the fields the status ladder exists to correct.
