# Distribution

Platforms like DistroKid are often casually referred to as "distributors," though technically they operate as aggregators and ingest gateways for Digital Streaming Platforms (DSPs). In practice, effective distribution and release management require far more active curation than these services provide out of the box—even with paid add-ons. This chapter documents the operational workflows that followed DAW mastering.


## Cover Artwork and Artist Photography

Album artwork is analyzed in detail in a subsequent chapter (see [Cover Art](./80_cover-art.md)), but visual assets form an essential prerequisite for ingestion. Every digital artist profile requires authentic photography. Having deliberately rejected a synthetic AI persona in favor of standing openly as the human orchestrator behind the machine, genuine photographic assets were non-negotiable. If the music and lyrics were synthesized, the human identity behind the work had to be unmistakable.

Hiring a commercial photographer for an independent experimental release was economically non-viable; paying more for headshots than for the entire technical infrastructure would have been absurd. Instead, I combed through personal archives from a past holiday in Scotland. At Eoropie Beach, on the northwestern coast of the Isle of Lewis, my wife had taken several portraits of me in heavy weather. The bleak, atmospheric setting mirrored the emotional tone of the album perfectly—and serendipitously, I was wearing a coat reminiscent of the lyrics in *[Wrecker](./70_05_wrecker.md)* ("oilskin").


## Distribution Infrastructure

Independent creators cannot upload audio directly to Spotify or Apple Music; DSPs mandate certified distribution intermediaries to manage catalog ingestion, metadata verification, and royalty collection. Aggregators advertise frictionless global distribution in a few clicks—a claim that is largely true for frictionless slop published under anonymous ghost-artist profiles. However, executing a disciplined, fully disclosed release without hiding behind an avatar demands significant administrative labor, particularly for a debut artist profile.

Regarding artificial intelligence disclosures: at the time of submission, modern ingest forms included standardized check-boxes for generative AI usage, which I completed truthfully. How DSPs process and display these disclosures remains notoriously inconsistent. Aggregators fulfill their duty upon ingestion; artists who falsify disclosures may pride themselves on gaming algorithmic filters, but they are simply making fraudulent declarations.


## Claiming the Artist Profile: The Chicken-and-Egg Problem

A debut artist launching their first release faces an inherent dilemma: on most DSPS, you cannot claim an artist profile until your first record is released. Aggregators rarely communicate the practical headache this creates: even if you schedule a release weeks in advance and ingestion processes successfully, accessing the staging profile before public release remains severely restricted.

This bottleneck prevents creators from preparing artist profiles in advance. On release day, an unmanaged profile launches blank—devoid of artist imagery, social links, or biographical context. For a project predicated on radical transparency and disclosing AI usage upfront in the artist bio, this was deeply frustrating.

* **Apple Music:** Allowed proactive claiming of the artist profile prior to release day via Apple Music for Artists.
* **Spotify:** While the distributor interface offered a shortcut to claim Spotify for Artists prior to release, the automated bridge failed in my case. I had to register manually and escalate through Spotify Support (who responded promptly) to verify that the generated artist placeholder mapped correctly to my name, avoiding accidental misattribution against existing artists named Jan Köster.
* **Other Platforms:** Pre-release verification is largely non-existent across secondary DSPs. Furthermore, because profiles remain hidden from public search until launch day, building advance algorithmic momentum or gathering pre-release followers remains impossible for independent newcomers.


## DSP Profile Constraints

Platform interfaces vary widely regarding artist autonomy and biographical disclosure. Apple Music stands out as particularly rigid: the interface permits neither external hyperlinks nor custom artist biography text. A concise statement such as *"This music was synthesized using generative AI under human curation; documentation and full prompt archives available at GitHub"* cannot be displayed. To provide basic context, I had to repurpose one of Apple's five rigid artist Q&A prompts.

Spotify is somewhat more accommodating, providing a free-text biography section, though web URLs remain unlinked plain text. Clickable outbound links are restricted to major commercial social networks.

The structural opacity of DSPs is revealing: while the industry publicly decries the flood of AI slop and ghost artists, platform architectures actively impede creators attempting to provide verifiable provenance and open documentation.


## Lyrics Integration

Publishing static lyrics is straightforward and free of charge via DistroKid, provided the text conforms to standard capitalization and formatting rules. On most DSPs, however, static text remains hidden from standard player views. Time-synced scrolling lyrics require either paid distributor upgrades or third-party synchronization via Musixmatch Pro. The latter requires an active, verified Spotify artist profile with a catalog already live—another workflow that cannot be configured prior to public release.


## Spotify Canvas

With the Spotify artist profile verified, I was able to generate and upload looping Canvas video clips for individual tracks prior to launch. I completed this for *[Hollow](./70_01_hollow.md)*, with additional canvases planned.

Documenting the visual synthesis of these clips could fill an independent repository. Briefly: the video loops were generated using Google's Veo model within Google Flow, yielding a fascinating catalog of generative glitches (during the dining room scene in *[Hollow](./70_01_hollow.md)*, an instruction for "flickering candlelight" caused the chandelier to erupt in bursts of flame). For the projector sequence, I first generated reference stills using Nano Banana conditioned on vintage personal photographs, which were subsequently fed into Veo as image-to-video prompts.


## Playlist Pitching

Most streaming platforms permit creators to submit unreleased tracks to internal editorial teams for playlist consideration. With tens of thousands of tracks submitted daily, the probability of algorithmic or editorial pickup for an independent niche release is negligible, but the mechanism remains standard protocol.

Spotify enforces a strict policy that tracks can only be pitched prior to release day—which circles back to the friction of claiming a debut profile ahead of time. Other DSPs (where available) permit post-release pitching.


## The Zenodo Archive

A core structural pillar of this project is the deposit of raw synthetic artifacts, multi-track Ardour DAW sessions, stems, and final master files into a restricted Zenodo repository prior to public release.

> J. Köster, "Likeness Relics: AI Artifacts, DAW Sessions, and Audio Masters", Sep. 20, 2026, Zenodo. [doi: 10.5281/zenodo.22842478](https://doi.org/10.5281/zenodo.22842478)

Should disputes arise regarding authorship, chronology, or human curation, this timestamped academic deposit acts as an immutable digital notary. While this precaution will not prevent bad-faith automated copyright claims or temporary platform takedowns, it provides definitive cryptographic evidence to expedite appeals and resolve disputes.


<div align="center">

**[< Previous Page](./40_implementation.md) - 05 - [Next Page >](./60_narration.md)**

</div>

