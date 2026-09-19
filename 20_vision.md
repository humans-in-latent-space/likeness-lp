# Vision

## Show AND Tell

**A prompt without its artifact has no substance—an artifact without its prompt has no context. They are entangled relics of a performance in Latent Space.**

We can consume an AI-generated artifact without knowing its prompt, just as we can read a prompt without experiencing the resulting artifact. In isolation, both remain fundamentally incomplete. Even through a poststructuralist lens—where an artifact's meaning resides entirely within the receiver's perception—the material conditions of its emergence remain obscured. Without that provenance, it is impossible to determine whether a human being was involved in the process at all.

If we conceptualize the generation of an artifact as an ephemeral, non-deterministic performance within latent space, the prompt as the point of departure and the artifact as the terminal coordinate of that trajectory become indivisible. They must be evaluated as a single, coherent whole.

This repository exists to document the conception of *Likeness*. It does not assert interpretive authority over the lyrics or dictate how a melody should be felt. Instead, it offers a transparent record of how these artifacts were realized, exposing the precise degree of human intent operating behind the synthetic output. This documentation is not a supplementary handout or conventional liner notes; it is an integral component of the work. Without this repository, the album is merely another compilation of digital audio; without the album, this repository is an abstract theoretical treatise without empirical substance.

The repository does not claim subjective artistic brilliance—that assessment belongs solely to the listener. It simply documents, in plain view, an engagement with a fundamentally new instrument.

## No Slop, No Kitsch, No Imitation

Throughout this project, I held myself to three core constraints:

* **No Slop:** The tracks had to be conceived and curated with rigorous intentionality—the antithesis of soulless, rapid-fire commodity content. Every track had to satisfy my own aesthetic sensibilities. Even when generative systems absorb tremendous mechanical labor, the operator must still invest sweat and blood. That remains our foundational expectation of artistic work.
* **No Kitsch:** While the tracks deliberately engage genre conventions and offer accessible listening surfaces, they refuse the trap of maudlin, sentiment-maximizing kitsch. They operate across multiple semantic registers, confront the listener with questions, and seek friction rather than avoiding it.
* **No Imitation:** Although specific artists and genre tropes served as reference points during lyric drafting, the objective was never a one-to-one replica, but the emergence of a distinct voice. The world has no need for an algorithmic clone of an existing musician, living or dead; the goal was to articulate an original perspective.

## Radical Transparency: The Imperative of Non-Deception

*Likeness* was realized through synthetic systems: the AI drafted initial lyrical sketches based on structured instructions, which I then edited and refined before submitting them into the audio generation pipeline. From the outset, absolute transparency was non-negotiable. This was not merely about honesty toward the listener—who, in an era of deepfakes, rightly feels suspicious of generative media—but because the metatextual resonance of the lyrics depends entirely on this fact. The songs cannot function as intended unless the audience knows that an AI is singing. Artificiality is not a technical footnote; it is the core of the album's thematic identity. The project does not aim to mimic humanity, but to delineate what might be termed "the nearest stranger." Concealing the machine's role would fundamentally invalidate the experimental premise.

Radical transparency also delineates what the AI did *not* do, illuminating the domains of direct human labor. The repository reflects this principle: while the final English documentation is refined through generative assistance, the original, hand-written German drafts remain accessible in the Git history. The same holds true for the incremental evolution of the project itself.

Because *Likeness* was produced exclusively using Google models, every generated artifact carries DeepMind's SynthID watermark—a technical provenance entirely aligned with the project's conceptual goals.

## No AI Persona

Integral to this policy of non-deception was the deliberate rejection of an AI persona. While the tracks exhibit a cohesive vocal profile and the album artwork features recurring portraits of the same woman (a deliberate visual motif and a play on the feminine connotations of my first name in English), these are aesthetic elements. The artist profiles registered across streaming platforms display my own identity as the human orchestrator behind the synthetic execution. Fabricating a synthetic pop persona would abandon authenticity in favor of pure simulation, destroying the productive tension required for *Likeness*.

## AI as a Draft Engine

In conceptual art, the initiating artist does not execute the work directly. They author the rulebook and the instructions, delegating realization to assistants or fabricators. I make no claim that prompting generative AI constitutes conceptual art—that would be a category error. Generative models can be used within conceptual art, but prompting alone is not conceptual art. Nevertheless, the structural parallel holds: the human operator authors the prompt and defines the constraints, while the system executes the artifact. The critical distinction is that a conceptual artist typically accepts the output as long as it adheres to the rulebook, whereas an AI operator must actively curate, iterate, and edit the output.

For *Likeness*, the operational chain was more complex. Gemini first drafted lyrical fragments based on my instructions. I reworked these drafts into a finalized instruction set. Crucially, I did not input this text directly into Google's audio model (Lyria 3); instead, Gemini acted as an orchestrator, serving as a Chief Assistant that translated my prompt into a proxy instruction for Lyria. I never saw this intermediate instruction—Google maintains it as a black box. Disclosing my original input instructions is therefore essential for evaluating where human intent ended and algorithmic mediation began.

## Genuine Labor

Generative AI is widely—and often accurately—associated with frictionless superficiality: the next artifact is always one click away. That output is not necessarily devoid of interest; a concise prompt can yield striking results, and chance frequently smiles on the user. But these lucky one-shots are almost impossible to reproduce and cannot sustain a cohesive body of work.

**Micro-curation selects the artifact; macro-curation validates the framework.**

A thirteen-track concept album serves as an ideal stress test for the myth of push-button creation. Generating a single compelling track takes minutes; producing thirteen interlocking compositions with a unified sonic architecture, pre-authored lyrics, and rigorous digital post-production demands genuine labor. Producing *Likeness* required three months of intensive, part-time dedication.

## No Slot Machine, No In-Painting

The temptation with generative AI is to treat the interface like a slot machine, repeatedly pulling the lever in the hope that stochastic drift will eventually yield perfection. In practice, if a prompt fails after a handful of generations, brute-force repetition will not save it. You cannot game probability.

My operational rule was strict: if an instruction failed to yield a viable musical foundation within ten attempts, I halted the session. I analyzed the failure modes, revised the prompt architecture, and only then resumed generation. The obstacle is rarely the probabilistic engine itself; it is almost always the operator's failure to formulate their intent with sufficient clarity. Anyone who burns through hundreds of iterations of an unchanged prompt has primarily achieved two things: consumed tokens and generated carbon emissions.

## AI as a Mirror of the User

My operational setup relied on an extensive system prompt embedded in Gemini's persistent memory feature. This prompt contained a concise, highly specific profile of my cognitive architecture, domain background, and communication preferences. While this might appear self-indulgent at first glance, its rationale was purely pragmatic: I refused to waste tokens and attention repeatedly explaining my background, analytical preferences, and aesthetic constraints.

Consequently, Gemini possessed sufficient context to interpret my standard prompts accurately. It adapted its vocabulary dynamically and attended to subtleties that its baseline system configuration would have ignored. The system mirrored its operator, becoming a functional *likeness* of the human driving it.

## Subtext Inversion

Across the album, the lyrical narrator repeatedly experiences alienation, fabricated identity, and detachment from reality. The narrator can be understood either as a human woman grappling with artificial expectations or as an AI contemplating its own synthetic nature.

Crucially, the generative model was never informed of this double meaning during lyric drafting. On the contrary: I repeatedly instructed the model that the narrator was a human woman. Had I disclosed the algorithmic subtext to the model, the narrative would have collapsed into clumsy, heavy-handed sci-fi tropes. To achieve genuine ambivalence, I had to keep the AI in the dark regarding the metatextual layer. The model never simulated an "awakened machine"; it wrote from the perspective of an alienated human. As a result, the lyrics function convincingly on a literal level, while revealing their full conceptual resonance only when the listener recognizes the synthetic identity of the performer.

## Folk as a Stress Test for Authenticity

Folk music has long been regarded as the cultural bastion of raw, unfiltered human vulnerability. Intimate recording techniques—such as close-mic vocal capture where breath and articulation become prominent—establish an emotional closeness that few other genres can rival.

The friction with a synthetic origin could hardly be sharper. A cyberpunk composition laden with bit-crushed glitches, synth pads, and vocoded delivery would broadcast the synthetic nature of the narrator from the opening bar. There would be no tension, no subtext, and no subversion of expectation—merely an algorithm fulfilling a tired pop-cultural stereotype.

Folk forces the machine into the territory of human intimacy. It is rooted in oral tradition and communal memory—an intriguing parallel to latent space, which is itself constituted from the collective digital archive of human expression. The central inquiry of this project was straightforward: Can a non-conscious, generative model generate genuine emotional resonance in a human listener purely through stochastic pattern synthesis?

This question ties back directly to radical transparency. Folk depends on perceived authenticity. *Likeness* plays internally with narrative illusion, but remains scrupulously honest with the listener. Much of my own lived experience informed these tracks. How much of this perceived authenticity is unconscious and how much is deliberate staging cannot be definitively resolved—but that ambiguity is native to human folk music as well. Authenticity in art has always involved curation and staging.

Because an AI ultimately performs these vocal lines, a recursive loop emerges: an AI simulates a human who feels like a synthetic construct trying to be human, inevitably falling short because of its artificial nature. When the generative audio model falters—producing phantom harmonic artifacts, unnatural breath cadences, or aberrant inflections—we bear witness to that failure. A human singer delivering these lines could never replicate that specific unease. A likeness resembles its source, but can never become it.

## The Augmented Layman

As an operator, I possess no formal musical training: I cannot play instruments proficiently, compose standard notation, or navigate professional DAW workflows with commercial speed.

Within this framework, the generative model acts as a cybernetic augment. It lowers the execution barrier sufficiently to allow an untrained creator to realize a project of this scope. The objective was never to match or exceed the craft of professional musicians and engineers—an arrogant and absurd notion—but to dismantle traditional economic and technical bottlenecks, achieving an aesthetic threshold where emotional resonance becomes possible without collapsing into amateurish defects.

## Eliminating Economic Thresholds

Generative AI continues to disrupt creative labor, and defensive reactions across the music industry are entirely understandable. Yet critical discourse frequently overlooks how the collapse of marginal production costs democratizes creative expression. Producing an album like *Likeness* through traditional avenues would require session musicians, arrangers, mixing engineers, and commercial studio time—costs that place complex, long-form concept albums entirely out of reach for independent creators.

*Likeness* did not displace human labor. The alternative to producing it with generative tools was simple: it would never have existed. The technology reduced the capital barrier for a niche, commercially non-viable concept album to near zero, enabling its creation from the ground up.

Dismissing this by arguing that non-professionals should simply not make music represents classic cultural gatekeeping. Every individual should have access to creative production; it remains the audience's prerogative whether to engage with the work. This is not an endorsement of the industrial slop flooding streaming services. Having invested three months of intensive labor into curating this record, I am speaking strictly of work driven by dedication, critical reflection, and care.

## From AI Raw Material to Neighboring Rights

A central challenge of generative art concerns intellectual property. Under prevailing legal doctrine, raw AI outputs reside in the public domain, and prompts rarely meet the threshold for copyright protection. Both principles are sound. Applying copyright indiscriminately to prompts would enable bad actors to claim ownership over basic strings like "photograph of a cat, 4K," while assigning copyright to unedited outputs would grant private monopolies over stochastic re-combinations of the collective commons.

The music industry offers a useful legal precedent. While a traditional folk melody or classical composition resides in the public domain, a specific master recording of that work is protected under neighboring rights (*Leistungsschutzrecht*). This framework was established to safeguard economic and technical investment, independent of whether the underlying composition meets a standard of original authorship.

This legal logic applies directly to synthetic audio. An unedited, raw generation belongs to the public domain; the operational labor belongs primarily to the platform infrastructure. However, once an operator intervenes manually—editing stems, applying equalization, slicing, arranging, and mastering in a DAW—a distinct master recording emerges, giving rise to neighboring rights for the sound recording's producer. Whether this holds for automated batch pipelines is doubtful, but it unequivocally applies to deliberate manual post-production. For this reason, every track on *Likeness* was edited and mastered by hand.

Philosophically, this intervention resembles John Locke's concept of property emerging from "mixing one's labor" with common resources. The generative commons remains unencumbered: because no exclusive monopoly is claimed over the prompt or the raw artifact, the latent space remains open to all.

This repository formalizes that stance through its licensing. Under the Apache 2.0 license, the entire textual, structural, and methodological framework of *Likeness* is placed in the commons, conditioned solely upon attribution.

This applies equally to the lyrics. While I could theoretically assert copyright over the texts by claiming a hybrid work based on human curation, doing so would invite protracted legal ambiguity. Relinquishing exclusive claims and releasing the lyrics openly is both pragmatic and consistent with the project's ethos.

## Real-World Pragmatism

A skeptic might ask why these tracks are distributed across commercial streaming platforms rather than hosted exclusively as free downloads, given the project's research orientation.

Three practical considerations dictated this decision:

1. The modern public consumes music almost exclusively through streaming platforms. One may critique this reality, but self-hosting audio files reduces discovery and audience engagement to near zero.
2. While this repository documents an intellectual inquiry, the ultimate output is music meant to compete on sonic terms with contemporary releases. It should not be sequestered under an academic "experiment" label, but experienced in the wild alongside commercial works.
3. As detailed below, the ethical architecture of the project requires revenue generation in order to fund charitable contributions.

## Cybernetic Recombination

Contemporary foundation models were trained on unprecedented volumes of human intellectual and artistic labor. The acquisition of these training corpora remains contentious, prompting extensive litigation and legitimate accusations of digital colonialism. It represents an original sin that every user of generative AI must confront. That historical extraction cannot be undone, but our prospective relationship with creative ecosystems can be renegotiated.

If generative systems threaten the livelihood of working musicians, leading to a decline in original human music (which foundation models themselves depend upon for future training), creators utilizing these tools bear an obligation to counter that dynamic. For this reason, I direct a fixed portion of the album's gross streaming revenues to music education and emerging artist support.

Through DistroKid's "Artists for Change" initiative, royalties can be routed automatically to organizations like GroundUp Music Foundation. Inclusion in the public "Artists for Change" roster provides verifiable proof of contribution without requiring manual disclosure of receipts.

At the launch of this project, I configured a mandatory split donating 25% of gross revenue per track. This represents a tangible financial commitment, far beyond symbolic single-digit gestures. Skeptics may ask why I do not donate 100%.

While this album could not exist without generative models, the underlying human labor, aesthetic direction, and conceptual architecture remain mine. The model was an instrument, not the author. Furthermore, the project incurred real expenses: platform subscriptions, distributor fees, and audio hardware. Given the microscopic economics of digital streaming, it remains uncertain whether the album will ever break even.

Tax considerations further complicate total donation models. Automated deductions by DistroKid do not exempt gross earnings from classification as taxable personal income under German law. Because foreign non-profits often lack recognized charitable status under domestic tax codes, donations cannot be cleanly written off against personal liability. Under a 100% donation structure, an independent creator could face substantial income tax liabilities on money they never retained. Any functional ethical framework must allow the creator a sustainable operating margin. A 25% split is neither heroic nor tokenistic; it is a pragmatic realization of responsible AI usage. If the album generates minimal revenue, the absolute contribution will be small—which is equitable, as contributions scale with cultural and commercial footprint rather than penalizing hobbyist experimenters upfront.

Realistically, this album may never generate meaningful revenue. Streaming monopolies have systematically structured payout thresholds—such as Spotify's 1,000-stream annual minimum per track—to siphon capital away from niche artists toward major label catalogs. Whether this system is sustainable is another debate. Pragmatically: if few people stream this record, no public commons has been exploited; if it succeeds, a direct fraction of that success flows back to support the human musicians whose lineage made it possible.

## Git History as Audit Trail and Performance

At scale, machine-generated text reliably triggers automated classifiers, particularly when models like Gemini embed statistical watermarks (SynthID) into their outputs. For a non-native English speaker using LLMs to refine text, the resulting prose will inevitably register as machine-assisted.

How, then, do we substantiate the provenance of the underlying human ideas? Version control provides a definitive audit trail. By checking the original, handwritten German manuscripts directly into Git, the provenance of human authorship remains permanently auditable. Anyone wishing to inspect the unmediated foundation need only examine the commit history, complete with typos, colloquial phrasing, and early-morning mobile drafts. The version history documents the incremental evolution of the project, while an integrated Zenodo deposit anchors the publication immutably in time.

## The Zenodo Relics Vault

In parallel with this repository, an immutable, restricted Zenodo archive houses the primary digital assets: raw AI generations, multi-track Ardour project files, final masters, and visual assets, deposited prior to commercial distribution. Every file is cataloged in this repository via its cryptographic SHA-256 hash.

Should disputes arise regarding attribution, claims of algorithmic plagiarism, or challenges to human curation, this timestamped repository serves as a digital notary. To an outside observer, this may appear overly defensive—who bothers to contest an independent folk album? But anyone familiar with automated Content ID abuse on platforms like YouTube understands the pervasive threat of fraudulent copyright strikes. This architecture demonstrates how independent creators without label backing can establish cryptographic provenance to defend their work against bad-faith takedowns.

