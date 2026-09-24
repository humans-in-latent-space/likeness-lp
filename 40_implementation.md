# Implementation


## Realization


### Generation

While several foundational aspects were introduced in previous sections, they are consolidated here for operational completeness.


#### Operational Parameters

* **Environment Isolation:** Track instructions were consistently executed in clean conversational sessions, with the *Personal Context* profile active. The underlying generative model employed was Gemini 3.1 Pro.
* **Full Regeneration over In-Painting:** In-painting and selective editing within generative audio interfaces yielded poor results in my testing. Adjustments were either ignored or massively over-indexed, invariably destroying the rhythmic momentum of the performance. Requesting alternative takes within an existing session proved equally unreliable, as the initial (flawed) output functioned as an unwanted attractor in the context window. I adopted a policy of either re-submitting the original prompt in a refreshed session or launching a clean thread.
* **Optimizing for Splicing:** Generating isolated spoken-word segments in isolation proved fragile. It was far more effective to position spoken-word passages at the center of the lyrics and excise them in post-production. The presence of the surrounding lyrical text forced the engine to maintain timbral and acoustic continuity.
* **Avoiding Stochastic Traps:** If an instruction set failed to produce a compelling harmonic core within a handful of iterations, I terminated the session and refactored the prompt. Rolling the dice against hostile probabilities is a waste of time and energy.


#### Common Failure Modes

* **Heteronyms:** Words like "tear" or "read" reliably tripped the model's phonetic parser. Strategic phonetic substitutions (e.g., "tare" or "reed") resolved these pronunciation errors.
* **Inline Stage Directions:** Formatting directives directly within the lyric body—whether italicized or bracketed—routinely failed, with the engine occasionally attempting to sing the directions aloud. Similarly, non-lexical vocalizations like "hh" failed completely; only simple phonetic cues like "oh" and "m-mh" rendered cleanly.
* **Lyrical Mutations (Transpositions, Doubling, Omissions):** The most frequent failure mode was the model altering pre-written lyrics. Rigid negative constraints like "do not alter the lyrics under any circumstances" provided little benefit, and in extreme cases caused generation to collapse entirely. The audio engine requires a degree of stochastic flexibility to fit words naturally to rhythm.
* **Initial Spoken Word:** Opening an audio generation with non-melodic spoken word almost guaranteed erratic arrangements. Such passages are best synthesized separately and spliced into the composition during DAW assembly.


### Uniqueness and Plagiarism Safeguards

A central concern for any composer is the risk of unintentional melodic duplication. With generative systems, this anxiety is heightened, as these models are explicitly architected to synthesize the most statistically probable patterns derived from their training data. I had no interest in reproducing existing songs or imitating artists (living or dead).

Here, Google Lyria's internal guardrails provided an effective safeguard. These safety filters not only prevent the generation of music based on named artists, but actively verify that the generated vocal timbre does not match known commercial vocal fingerprints, that protected lyrical fragments are rejected, and that recognizable melodies are filtered out.

While I never attempted to reverse-engineer or stress-test these guardrails maliciously, empirical observation suggests their detection thresholds are calibrated quite aggressively. Very few tracks made it through production without at least one iteration being intercepted by Google's filters. While a more informative error message explaining the specific trigger would be helpful—rather than a generic failure alert—the enforcement itself provided valuable confidence regarding the legal and aesthetic distinctiveness of the output.


## DAW Post-Production

Just as tracking in a commercial studio is followed by mixing and post-production, raw synthetic artifacts require disciplined manual intervention before release. Every track on *Likeness* was edited, processed, and mastered by hand in Ardour (an open-source Digital Audio Workstation).

This stage completes the conceptual circle: as a human creator, I author the instruction set; the machine synthesizes the raw material; and as a human engineer, I shape the final master. This manual intervention establishes the substantial human labor required to justify neighboring rights protection. To be clear: the goal was never to perform performative busywork merely to claim authorship, but to refine the sonic texture and align the final output with my aesthetic intentions.


### Splicing and Arrangement

Several tracks were assembled from multiple generated stems. Most commonly, this involved integrating spoken-word passages that were missing from or mangled in the primary musical take (e.g., *[Jobs](./70_04_jobs.md)*). In isolated cases, entire musical movements from different generations were combined (e.g., *[Agent](./70_09_agent.md)*). Specific architectural details for each track are documented in their respective liner notes.


### Audio Restoration

While Lyria generally outputs clean audio stems, two notable exceptions emerged: the spoken-word passages for *[Journey](./70_12_journey.md)* and *[Homecoming](./70_13_homecoming.md)*. Both generations were tracked excessively *hot*, exhibiting severe high-frequency sibilance. *[Homecoming](./70_13_homecoming.md)* suffered further from transient clipping and micro-crackles that were immediately apparent on planar magnetic headphones.

The intuitive response would have been to regenerate the takes. However, repeated attempts failed to recapture the emotional intensity of the initial generation. Whether this raw performance intensity was structurally linked to the digital clipping remains an unverified hypothesis.

To rescue these takes, I utilized Chris Johnson's open-source Airwindows plugins, specifically `Slew2` and `DeCrackle`:

* **De-Essing via Slew Rate Limiting:** Standard dynamic de-essers were rejected because they dull the upper midrange and alter the acoustic presence of the vocal. My concern was not deliberate vocal articulation, but abrupt, non-linear voltage spikes in the waveform. `Slew2` tames harsh transient peaks dynamically without altering overall spectral balance, effectively eliminating sibilant harshness while preserving the intimate presence of the vocal.
* **De-Crackling:** While `DeCrackle` is traditionally designed to clean digitizations of damaged vinyl, it proved remarkably effective at eliminating the micro-dropouts and digital crackle artifacts present in synthetic audio.


### Mastering Architecture

Mastering was executed within a single, unified Ardour session. Each track occupied a dedicated stem track routed through a centralized master bus processing chain.


#### Master Bus Plugin Chain

1. **Airwindows Infrasonic:** Strips sub-audible low-frequency rumble below the human hearing threshold. Although MP3 generation strips extreme sub-bass, raw tracks still exhibited occasional sub-sonic flutter. Filtering this region cleans up the bass response—relieving monitor diaphragms from rendering inaudible excursions—and prevents unnecessary energy from distorting lossy codec compression downstream.
2. **Airwindows Interstage:** A subtle analog modeling stage designed to tame harsh, hyper-energetic digital transients and mitigate the sterile edge typical of raw algorithmic audio.
3. **Airwindows Slew2:** The most audible restorative stage on the master bus. It intercepts steep ultrasonic spikes native to synthesized close-mic ASMR vocals, smoothing high frequencies without the phase smear of conventional shelving EQs.
4. **Airwindows TubeDesk:** Simulates the harmonic saturation and non-linear compression of classic tube consoles, imparting subtle warmth and analog glue.
5. **Airwindows Tape:** Emulates tape machine dynamics, rounding off aggressive transient peaks while preserving the organic character of the instruments.
6. **Airwindows ClipOnly3:** An transparent soft-clipping utility that catches stray peak overshoots before the final limiter.
7. **LSP Limiter Stereo:** A high-precision digital peak limiter configured with lookahead to prevent inter-sample clipping, ensuring clean true-peak output during final loudness normalization.


#### Head and Tail Silence

Lyria routinely maximizes its generation window, leaving virtually no pre-roll silence at the start and terminating abruptly at the end. In an album or playlist context, this creates abrasive transitions and risks audible transient clicks during playback starts.

Every track was manually padded with an introductory delay of approximately 300 ms, smooth entry and exit volume fades, and 1 to 2 seconds of natural room decay at the tail. Wherever feasible, natural reverb tails were extended seamlessly.


#### Loudness Normalization

Every track was balanced to an integrated loudness target of -14 LUFS. Because the analog modeling chain introduces subtle dynamic shifts, output levels were verified post-processing. The limiter ceiling was set between -2.0 and -1.0 dBTP (True Peak), aligning with current streaming distribution specifications (leaving ample headroom to prevent inter-sample clipping during AAC and Ogg Vorbis transcoding).


#### Export

Following final critical auditioning, all thirteen tracks were batch-exported to uncompressed 16-bit/44.1 kHz WAV files.


<div align="center">

**[< Previous Page](./30_instruction.md) - 04 - [Next Page >](./50_distribution.md)**

</div>

