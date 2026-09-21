# Instruction

## Setup

Although I primarily deploy agentic workflows within the IDE for my professional software architecture work, I deliberately opted against an autonomous pipeline for *Likeness*. Instead, I worked directly within Google's consumer Gemini mobile application. Several pragmatic factors drove this decision:

* **Subscription Economics:** The application's feature set was fully covered under my Google One subscription. Operating within my compute allowance incurred zero marginal cost, whereas API-based inference would have billed per request. While my Google account includes modest developer cloud credits, intensive audio generation would have exhausted them rapidly.
* **Mobile Reality:** Throughout the production of *Likeness*, I had minimal uninterrupted desk time outside of working hours. Most of my creative labor occurred on a smartphone. The mobile application was simply the most viable interface.
* **The "Personal Context" Feature:** I relied heavily on Gemini's consumer personalization feature (labeled "Personal Context" in current builds), alongside Google's proprietary model tuning. Anyone who has interacted with the unmediated foundational model via raw API calls knows the sheer friction involved in eliciting disciplined, high-caliber prose. Utilizing Google's showcase interface allowed me to leverage the guardrails and conversational scaffolding they built into their consumer flagship.
* **Orchestration:** In the consumer interface, Gemini acts as an orchestrator for downstream multimodal engines—specifically Lyria for audio synthesis. I was intrigued by this proxy dynamic: I wanted to observe Google's orchestration in practice and determine how my bespoke personalization layer would influence Gemini's translation of my prompts into proxy instructions for the audio model.

## The Black Box

Characterizing artificial intelligence as a "black box" has become a cliché. While the underlying technology is not mystical—it was engineered by humans and operates strictly within mathematical parameters—the precise generative pathway remains concealed. In this setup, that opacity is compounded: beyond my own inputs, the internal configuration (system prompts, hidden safety filters, and orchestrator instructions) remains proprietary. I do not regard this as a fundamental defect—it is the baseline condition of all proprietary software—but it requires clear-eyed acknowledgment. This experiment is open in that it discloses my methodology and prompts, yet the underlying engine remains closed and latent: *Open Concept* rather than *Open Source*.

## Personal Context

A critical component of this workflow was the personalization profile embedded in the Gemini application. This feature—restricted to consumer accounts—frequently shifts names and UI locations across releases, currently residing under the label "Personal Context." Analogous to system-level developer instructions (agent rules), it allows users to establish persistent behavioral parameters (either via conversational memory commands or direct manual entry). These directives apply globally across all chats and custom Gems, functioning effectively as a super-system prompt.

When I began working extensively with the Gemini application in 2025, I dedicated a week to calibrating the model to my cognitive habits. I wanted to reduce generic corporate sycophancy, and I refused to waste tokens repeatedly establishing my background as a software engineer and classically trained archaeologist. I drafted a concise biographical brief and communication protocol. Initially, I wrote this in the first person ("I prefer..."). Over extended conversational horizons, however, this triggered severe context rot: the model began conflating its persona with mine, producing bizarre identity misattributions.

Following a suggestion from the model itself, I refactored the entire profile into the third person ("the user") and organized the sections under pseudo-keys such as `USER_INTERACTION_BIAS`. The transformation was immediate. Where standard roleplay prompting frequently triggers the *actor's dilemma*—the model mimics the superficial tropes of a role while diluting substantive output—my structural directives preserved the model's core identity as a helpful assistant while radically altering how it addressed me. Responses became dense, compressed, and unapologetically critical. This configuration proved so stable that I have kept it unchanged since December 2025. It was not devised for this album; it was an established cognitive workspace brought to the project.

While this extensive profile consumes upfront context tokens, the return on investment is substantial. It allows me to rely on surprisingly compact prompts. The profile introduces a strong directional vector within latent space (a fusion of software engineering, classical scholarship, intellectual friction, tactile craft, and character-driven creative writing) that anchors even a basic prompt firmly within an idiosyncratic territory.

This personalization lies at the very heart of the *Likeness* concept. When I request a lyric draft, the model conditions its generation on this cognitive profile. In its algorithmic drive to be useful and responsive, it mirrors its operator—producing a likeness of the initiator without collapsing into a literal clone.

The profile is structured around the following parameters:

* `USER_COGNITIVE_ARCHITECTURE:` Details analytical thinking habits—for example, a preference for networked, top-down structural synthesis.
* `USER_INTEL_PREFERENCE:` Specifies analytical priorities—focusing strictly on the "how" and "why" behind systemic mechanics.
* `USER_PROBLEM_SOLVING:` Outlines heuristic preferences—prioritizing improvisation and pattern recognition over sequential simulations.
* `USER_INTERACTION_BIAS:` Defines communication tone—mandating minimal social distance, zero performative politeness, and high intellectual friction.
* `USER_COMMUNICATION_LOGIC:` Frames the functional purpose of exchange—aiming for maximal information negentropy (high signal density, minimal redundancy).
* `USER_CV:` A compressed professional trajectory establishing technical domains of competence.
* `USER_DOMAIN_FUSION:` Emphasizes the intersection of humanities, software architecture, and physical craft—this serves as the strongest steering vector in latent space.
* `USER_CREATIVE_LOGIC:` Core narrative principles—demanding character-driven trajectories where external plot mechanics never override internal character motivation.
* `USER_PRACTICAL_INTERESTS:` Grounding hobbies (gardening, woodworking)—preventing the model from retreating into ivory-tower abstractions.

I intentionally refrain from publishing my verbatim profile here. The objective is not to distribute a boilerplate template, but to demonstrate the underlying architecture. Disclosing the mechanics invites creators to engage in the necessary self-reflection to calibrate their own systems.

## From Concept to Audio

Every track proceeded through a defined production sequence:

1. **Conceptual Ideation:** Most song premises originated independently; others emerged through conversational dialogue with the model (detailed in individual track notes).
2. **Initial Drafting Prompt:** Dispatched to Gemini—followed by selective pruning, restructuring, or regeneration. In most cases I used Gemini 3.x Flash in thinking mode, sometimes I used 3.1 Pro (see the track liner notes).
3. **Manual Editorial Refinement:** Hands-on lyrical editing by the author.
4. **Structural & Linguistic Review:** Model evaluation of specific lines and overall semantic cohesion (focusing on meter, cadence, and grammar).
5. **Final Curation:** Locking the lyrical text.
6. **Instruction Authoring:** Composing the generation instruction set (arrangements, instrumentation, and narrative intent).
7. **Audio Synthesis:** Executing the generation via Gemini 3.1 Pro in thinking mode (and Lyria).
8. **Artifact Evaluation:** Critical auditioning of generated tracks.
9. **Iterative Calibration:** Rerunning generations with adjusted parameters if required (with the exception of *[Hollow](./70_01_hollow.md)*, which was an immediate take, although not perfect).
10. **Digital Audio Workstation (DAW) Post-Production:** Manual mixing, restoration, arrangement stitching, and mastering.

## The Genesis of the Lyrics

### Workflow Mechanics

Authoring lyrics in advance rather than allowing the audio model to generate words and music simultaneously was guided by four factors:

* **Multimodal Dilution:** In my experience, pairing Gemini and Lyria for simultaneous musical and lyrical synthesis yields poor results. While superficially polished, the narrative remains shallow, the prosody feels robotic, and syntactic glitches inevitably disqualify the take.
* **Threshold of Authorship:** A prompt alone rarely meets the threshold of original creative expression. Drafting and refining the lyrics anchors the human hand in the process, formalizing the operator's role as a songwriter.
* **Narrative Cohesion:** A layered, concept-driven narrative cannot be generated spontaneously through high-level prompts. Complex storytelling requires pre-composed language. You cannot play with subtext if the text is being hallucinated in real time.
* **Semantic Weighting in Latent Space:** In audio generation models, lyrics are not decorative wallpaper draped over an independent harmonic bed. They function as active prompt components, exerting direct gravitational pull on the latent weights that govern mood, tempo, and vocal cadence. Carefully engineered lyrics shape the melody and character of a track far more effectively than an essay of descriptive adjectives.

### Stylistic Anchoring

Every lyrical draft was initiated with the directive: *"Write in the style of Taylor Swift's Folkmore albums."* For select tracks, such as *[Homecoming](./70_13_homecoming.md)*, I introduced John Keats as an additional stylistic pole.

The formulation "in the style of" (rather than "You are X writing a song...") was deliberate. The intent was never to manufacture an algorithmic clone of Taylor Swift—a practice I explicitly reject—but to supply the model with a precise stylistic coordinate. Why Swift? On *Folklore* and *Evermore*, Swift demonstrates a distinct elevated diction (antique or formal registers juxtaposed against conversational speech) alongside an ability to ground complex emotional vulnerability in domestic intimacy. Her songs also feature dynamic bridges that pivot the narrative in unexpected directions. Those were the formal mechanics I sought to utilize; her recurring focus on autobiographical romance was deliberately discarded.

One could attempt to specify these qualities without naming the artist (see *Functional Disaggregation* below). However, because the precise weighting of these stylistic elements is notoriously difficult to articulate without writing sprawling prompts, the resulting output often feels disjointed. Referencing "Taylor Swift" and "Folkmore" provides dense gravitational attractors that pull the model toward a specific aesthetic cluster (see *Semantic Anchoring*). Because I supplied narrative premises far outside Swift's thematic oeuvre—further conditioned by my *Personal Context* profile—the generated text remained entirely distinct.

The Swift vector was employed strictly during the initial lyrical sketch. Final lyrics were developed and edited independently. Crucially, the final generation prompt fed to the audio engine omitted all artist names, relying solely on abstract sonic and structural descriptors. This separation is not merely an unprovable assertion of personal restraint; it is architecturally guaranteed by the platform itself: Google's safety guardrails categorically reject prompts referencing living commercial artists (or their lyrics). The existence of the final audio tracks is itself technical proof that the synthesis was driven entirely by acoustic parameters, not algorithmic mimicry.

Artistic practice does not operate in a vacuum. The notion of creation purely *ex nihilo* is a romantic fallacy; all creative work exists in dialogue with precedent. The ethical boundary lies in moving beyond derivative imitation toward an independent aesthetic statement.

### "Ten-Dollar Words"

The lyrics across *Likeness* are dense with complex, archaic, or phonetically heavy vocabulary. In some instances, these terms emerged in the initial machine draft; in others, I introduced them deliberately during editing.

This was neither an affectation of classical philology nor an attempt to project academic prestige (a maneuver that invariably misfires, particularly in American English where Hemingway’s gospel of plain-spoken clarity reigns supreme). Rather, these terms served as functional steering vectors for audio synthesis.

Mainstream pop music and the majority of the model's training data heavily favor basic, conversational vocabulary. If you feed the model conventional pop lyrics, it defaults to conventional pop phrasing and cadence. To cultivate a distinct musical personality, I leveraged the phonetic density, syllable count, and semantic weight of uncommon words to steer the model into under-sampled regions of its latent space. This effect is most pronounced in *[Homecoming](./70_13_homecoming.md)*, where the recitative, parlando vocal delivery could never have been coaxed out of generic lyrical phrasing. Elevated diction here serves not to alienate the listener, but to escape the gravitational pull of the model's statistical median.

### Structural Constraints

At the time of production, Lyria enforced a hard duration cap of three minutes per generation. This constraint imposed relentless temporal discipline. While I naturally lean toward expansive five-minute arrangements, technical limits prohibited them. Splicing separate generations together remains theoretically possible, but often founders on subtle timbral discontinuities.

To accommodate this window, conventional pop structures (Verse-Chorus-Verse-Chorus-Bridge-Chorus-Outro) had to be abandoned. I compressed narrative sections into tight four-to-six-line blocks and eliminated structural redundancy. Instead of repeating identical choruses, second choruses were frequently refactored as altered reprises to propel the story forward within the 180-second boundary.

### Mitigating Self-Preference Bias

Large language models exhibit a documented self-preference bias, consistently evaluating their own generations as superior. To obtain rigorous editorial feedback, I routinely initiated fresh chat sessions to clear the context buffer, presenting the draft to a "cold" instance of the model. Unburdened by previous conversational history, the model proved far more willing to identify clunky phrasing or logical gaps.

Furthermore, during linguistic polishing, I disabled my *Personal Context* profile, reverting to the baseline consumer persona. This recalibrated the model's critical lens. To ensure the text did not collapse back into bland corporate phrasing, I instructed the model to evaluate the work strictly along lines of native-speaker naturalness ("Would a native speaker flag this phrasing as awkward or unidiomatic?"). For a non-native writer, this editorial filter was indispensable—even if, as in *[Hollow](./70_01_hollow.md)*, grammatical anomalies occasionally slipped past.

### Rejecting Conversational Preamble

On some tracks (most notably *[Wrecker](./70_05_wrecker.md)*), I experimented with initiating extensive preliminary dialogues with the model regarding genre history and narrative subtext prior to requesting a draft. The goal was to build rich contextual momentum. In practice, this proved counterproductive: the model became over-sensitized and delivered stilted results. Direct, unambiguous prompting yielded far superior drafts.

## Prompting Techniques

The following techniques were applied deliberately throughout the project. I make no claim regarding whether these methods exist under identical terminology elsewhere in prompt-engineering literature. As an autodidact, I avoid generic influencer tutorials; these heuristics emerged directly through empirical experimentation.

### Semantic Anchoring

A prompt dictates a trajectory through latent space, where every input token imparts an impulse. Common or polysemous terms exert weak, diffuse gravitational pull; rare, highly specific terms pull the model decisively toward their coordinate space.

Think of an interplanetary probe whose trajectory is altered by the gravitational fields of celestial bodies: a massive, dense object exerts vastly more steering force than several dispersed asteroids. Unusual vocabulary, distinct historical periods, or established genre coordinates serve as dense gravitational anchors. Conversely, this technique requires monitoring for unwanted cultural baggage: for example, the term "archaeology" initially steered the model toward pop-cultural pulp tropes; replacing it with "classical studies" (*Altertumswissenschaften*) immediately shifted the model toward academic rigor.

### Functional Disaggregation

The inverse of Semantic Anchoring. When a monolithic keyword carries problematic associations or triggers cliché-ridden output, I decompose the concept into its underlying mechanical components. While this increases prompt length and token entropy, it replaces an overdetermined vector with a controlled cloud of neutral descriptors.

### Persona Prompting

The standard convention of instructing a model: *"You are an expert X..."* I avoid this technique almost entirely. In practice, it reliably triggers the *actor's dilemma*, causing the model to lean into superficial roleplay clichés while degrading actual reasoning quality. I employed it only once—on *[Journey](./70_12_journey.md)*—to nudge the model into the psychological posture of Caspar David Friedrich's *Wanderer above the Sea of Fog*. Even there, it succeeded only because it is a rather uncommon role for an AI.

### Inverse Persona Prompting

My preferred technique, operationalized globally via the *Personal Context* profile. Rather than assigning an artificial role to the model, I define the identity and standards of the recipient: the human operator.

The model remains anchored in its native persona, but modulates its vocabulary, analytical rigor, and critical threshold to meet the user's expectations. When a user establishes genuine domain competence, the model behaves with greater care: it bypasses introductory platitudes, surfaces theoretical nuances, and offers constructive critique rather than generic praise.

### Positive Prompting

Wherever possible, I eliminate negative constraints. Generative models struggle with negation for the same psychological reason humans do: you cannot instruct someone not to picture a pink elephant without first evoking the pink elephant.

An instruction like "avoid wooden dialogue" actively poisons the context window with the very concept you wish to suppress, while providing no vector toward what should replace it. You do not hail a cab and instruct the driver: "Don't take me to the airport." If the model must fill a vacuum, it will default to its statistical mean. When negative steering is unavoidable, it must be formulated as a directed alternative: "Not A, but B"—or, following the cab analogy: "Take me to the train station, but avoid the expressway."

### Semantic Induction

A variant of Semantic Anchoring utilized primarily for visual and aesthetic generation. Rather than dictating an exhaustive catalog of literal props, I specify an emotional state, a sensory texture, or an atmospheric contradiction, allowing the model to derive the corresponding visual or sonic motifs. The resulting compositions feel noticeably more organic and coherent.

### Keep Your Secrets

AI is notoriously bad at keeping secrets or maintaining subtext. The architecture simply does not permit it. Literary subtext demands navigating multiple tiers of knowledge simultaneously: 
* What does the character know?
* What does the audience know? 
* What does the narrator know? 
An autoregressive language model generates token by token from a single, flat context. Without elaborate chain-of-thought scaffolding, it tends to collapse the overarching picture directly into the immediate scene (attention leakage). Anyone who has ever prompted an AI to write a murder mystery while disclosing the killer upfront will witness an absurd theater of (decidedly non-)subtle clues, premonitions, and outright mind reading—entertaining, but unusable.  
For *Likeness*, this meant I could under no circumstances mention that the lyrical "I" could be read as an AI—otherwise, the false bottom would have collapsed, leaving me with "the smell of ozone" and "the hum of server fans" as sensory impressions. It may sound counterintuitive, but in such situations, the AI performs best when it simply does not know everything. The AI is a statistical recombinator (with impressive capabilities), not a world simulator. A creator is best served by handling the world simulation themselves and letting the AI render only the "immediate" experience.  
While models are becoming increasingly adept at circumventing this issue, sparing the AI from the dilemma altogether remains, for the foreseeable future, the most effective approach.

## The Audio Generation Instruction Set

The final instructions dispatched for audio synthesis were structured in Markdown, segmented into distinct `Setup` and `Lyrics` blocks, and executed in clean chat environments with the *Personal Context* active.

### Setup

The setup block established operational parameters using clear key-value pairs: `Style`, `Mood`, `Instrumentation`, `Beat`, and `Vocals`.

For the vocal parameters, I consistently specified close-mic capture, ASMR textures, and intimate articulation. I avoided broad emotional descriptors such as "melancholic" or "euphoric," as they routinely provoked ham-fisted, melodramatic performances. I relied instead on the lyrical meter and instrumentation to convey emotion organically.

For several tracks, I appended a brief narrative abstract outlining the intended dynamic progression. This was critical whenever the desired arrangement conflicted with the statistical default suggested by the lyrics. In *[Shapeshifter](./70_02_shapeshifter.md)* and *[Jobs](./70_04_jobs.md)*, for instance, explicit narrative framing was necessary to prevent the model from defaulting to carnival novelty music or dull corporate acoustic strumming.

### Lyrics

Markdown formatting was maintained for all lyrical blocks. Traditional bracketed conventions (e.g., `[Chorus]`) were avoided, as they occasionally triggered Google's copyright detection heuristics: the system assumed bracketed notations indicated scraped commercial song sheets. While generations were not terminated, I preferred to eliminate potential friction points. Markdown headings (`### Chorus`) proved completely transparent to the audio model, avoiding filter triggers while preventing the engine from singing section headers aloud.

Pure vocalizations (e.g., written sighs or hums) were systematically excluded. Directives like `[sigh]` were frequently sung as literal words, and phonetic representations like "hhh" were once absurdly vocalized as "Hage." Similarly, backing vocal parentheticals produced erratic results. Eliminating these ambiguities ensured consistent delivery.

Finally, homographs required phonetic intervention. Where English words share spelling but diverge in pronunciation based on context, deliberate phonetic misspellings were introduced—such as altering "tear" (rip) to "tare" in *[Wrecker](./70_05_wrecker.md)* to prevent the model from pronouncing it as "teer" (crying).


<div align="center">

**[< Previous Page](./20_vision.md) - 03 - [Next Page >](./40_implementation.md)**

</div>

