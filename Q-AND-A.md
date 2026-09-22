# Questions & Answers

**Why GitHub as a platform?**  
GitHub remains the undisputed workshop for contemporary software development. As artificial intelligence advances, the boundaries between executable code and documentation are increasingly eroding. I firmly believe that in the medium term, pure syntax and conventional manuals will decline in relevance. In their place, operator intent—situated in the tradition of Architecture Decision Records (ADRs)—will become paramount. Publishing my concept of *Open Intent* on GitHub as an empirical experiment is the natural conclusion of this logic. Furthermore, integrating the repository with Zenodo enables immediate publication alongside an immutable, citable DOI at a velocity no conventional academic or commercial medium could ever match.


**Why English lyrics when your native language is German?**  
The personal answer is that I have always struggled with German song lyrics. In my private listening, I engage with only a handful of select German artists. German operates within a very different literary and acoustic tradition: what registers as romantic or profound in English often sounds heavy-handed, flat, or maudlin in German. I also naturally gravitate toward English-language literature, both academic and fictional.

There is also a cybernetic, technical rationale: I am fascinated by how generative AI empowers a non-native speaker to produce English prose and poetry of unprecedented quality (not without flaws, as *[Hollow](./70_01_hollow.md)* demonstrates). Working across a linguistic threshold alters the editorial dynamic: in my native German, I would instinctively micromanage every nuance, whereas curating a foreign tongue enforces productive aesthetic distance. In agentic programming, I similarly prefer working in languages I know only superficially; it prevents me from imposing ingrained antipatterns onto the model (traditional software craftsmen might balk at this, but software architecture is rapidly moving in this direction).


**Why publish the generation instructions in English rather than the original German?**  
Because copy-paste utility is not the objective; comprehension is. For documenting my underlying intent, English ensures universal accessibility for an international audience. Furthermore, presenting the instructions in English integrates them seamlessly into the overall monograph, ensuring continuity across the track dossiers.


**Why is there no downloadable prompt pack for copy-pasting?**  
I have little patience for conventional corporate tutorials or gamified click sessions where users copy-paste snippets, compare identical outputs, and receive a digital completion badge. While generative outputs are non-deterministic, prefabricated prompt templates primarily incentivize thoughtless duplication. I disclose my methodology so that others may adapt and evolve it. Genuine insight requires active, friction-filled reflection. In that sense, this project deliberately rejects the prevailing industry obsession with "frictionless" or "seamless" integration.


**Are the results reproducible if I submit your exact prompts?**  
Reproducing an identical result is statistically impossible; probability simply does not work that way. The output may occupy a similar aesthetic neighborhood, but it will exhibit distinct sonic variations. I have never tested my finalized instructions in fresh default sessions or alternative environments—doing so would be a pointless expenditure of tokens and compute. You are far better served by adopting my methodology and authoring your own lyrics; it is also incomparably more rewarding.


**Why not make the raw, original AI audio artifacts available for direct download?**  
A fair question. The underlying reality: under current legal frameworks, raw generative outputs reside in the public domain; I hold no exclusive intellectual property rights over unedited machine generations. Releasing raw tracks would surrender any control over their distribution, inviting bad actors to execute opportunistic re-uploads and fraudulent Content ID takedowns against the project itself. Doing so would undermine the human agency behind the work. Instead, I preserve them auditably via cryptographic SHA-256 hashes anchored in an immutable, restricted Zenodo deposit. Anyone remains free to re-interpret the melodies and lyrics—as detailed below.


**Am I allowed to cover your songs?**  
In principle, yes—unconditionally. However, a legal and terminological distinction applies: because raw synthetic audio is public domain, recording your own version is legally not a "cover," but an independent master recording of public-domain material combined with open-source lyrics. This matters when your distributor asks during ingestion whether you are submitting a "cover song" (in the strict legal sense of mechanical licensing, you are not). Simply credit me as the lyricist and reference this project wherever you publish the work—and crucially, refrain from enabling automated YouTube Content ID on your release. You own the neighboring rights to your specific recording, while the underlying synthetic composition remains in the public domain. An automated Content ID claim on your part would trigger false copyright strikes against my own release, which I would be forced to contest—and platforms penalize abusive claims severely. Spare us both the administrative friction.


**Couldn't this entire album have been clicked together in a single afternoon?**  
That synthetic production operates at vastly higher speeds than conventional studio tracking is undeniable. When I cite three months of production, I do not mean forty-hour workweeks at a desk. I could perhaps have rushed the lyrics and prompts into existence in a fortnight—but whether the narrative architecture would have developed with equal depth and internal cohesion is doubtful. A novel does not improve simply because a word processor types faster than a typewriter or a fountain pen.


**Why Google's Lyria 3 instead of platforms like Suno or Udio?**  
While Suno and Udio provide extensive in-painting and editing suites, they operate on different architectural assumptions and interactive paradigms. Lyria functions at a higher level of abstraction, responding to nuanced prose instructions. Furthermore, Google's DeepMind SynthID embeds genuine, imperceptible technical watermarking into the audio data—a provenance mechanism I consider indispensable in light of emerging regulatory frameworks like the EU AI Act.


**Why didn't you hire human session musicians or vocalists to track the parts?**  
A hybrid production would have been logistically impossible within my domestic constraints (working in fragmentary pockets on a phone while caring for an infant). More fundamentally, I deliberately committed to pure, end-to-end audio synthesis as a maximalist stress test for generative media. And on a purely practical note: I do not possess a breathtaking female singing voice myself.


**Do you make money with this?**  
A reality check on streaming economics: Spotify enforces a 1,000-stream annual threshold before paying out a single cent, 25% of gross royalties are routed to the GroundUp Music Foundation, and platform subscriptions for Google and DistroKid incur ongoing out-of-pocket costs. Net result: this is an idealistic, subsidized endeavor. Professional musicians survive primarily through live touring—a strategy that remains somewhat difficult to implement for an algorithmically synthesized indie-folk project.


**Doesn't this project profit from the unconsented scraping of human artists?**  
There is no point in sugarcoating the reality: contemporary generative AI is the product of *digital colonialism*. Whether Google DeepMind proceeded with greater caution or equal ruthlessness compared to other industry actors is impossible for an outsider to assess. Courts across the US and the EU have yet to deliver definitive verdicts on whether ingesting copyrighted music without bespoke training licenses constitutes fair use or infringement. Until then, we inhabit a legal and ethical grey zone.

I cannot retroactively rewrite how foundation models were trained. I can, however, take responsibility for my own downstream practice: if I employ and benefit from these tools, I must establish ethical compensation. Because I cannot trace which specific training tracks contributed to the success of my generations, I direct resources forward. Should this album generate revenue, a mandatory 25% split of gross streaming royalties flows to the GroundUp Music Foundation to support music education and emerging artists. I consider this far more constructive than abstract statutory levies, which invariably enrich major corporate labels rather than grassroots working musicians.


**What is your background? Are you a musician or a software engineer?**  
Neither in the conventional sense. Academically, my roots lie in Classical Studies, Ancient History, and Classical Archaeology. Professionally, I work as a Research Software Architect in long-term *Digital Humanities* projects. However, I hold no formal degree in computer science—I am an autodidact, approaching software strictly as a pragmatic means to an end rather than an end in itself. Nor do I possess formal musical training: within this project, I operate squarely as what I describe in *[Vision](./20_vision.md)* as the "augmented layman."

My relationship with artificial intelligence is also relatively recent. Until mid-2025, I had practically zero engagement with generative AI. Today, I orchestrate virtually every new project agentically. The shift was pragmatic: agentic systems liberate me from the mechanical friction of low-level execution—allowing me to focus on architectural problem-solving rather than manually typing `while` loops.

This domain fusion defines the DNA of *Likeness*: my background in antiquity and philology informs the lyrical density, metric scansion, and historical subtext (from Hellenistic poetics to excavation stratigraphy), while my architectural mindset dictates the operational discipline. The generative model acts as a cybernetic instrument, enabling an independent creator to realize an ambitious, complex concept that would otherwise have remained locked behind technical bottlenecks.


**I don't like the music; isn't this just kitsch?**  
Debating what constitutes "authentic art" or good taste is rarely productive. Disliking the tracks is completely valid. However, subjective aesthetic distaste should not result in an ontological category error: disliking a song does not mean it lacks artistic intent. I make no claim to being a "great" artist, but I certainly claim an intentional artistic vision for this record. The objective was never universal appeal, but authentic expression and an earnest exploration of a defining cultural moment.


**Will AI destroy humanity?**  
I do not fear artificial intelligence; I fear the humans who deploy it recklessly, lazily, or to exploit others.

