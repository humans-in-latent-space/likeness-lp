<!-- 2026-09-19 05:29:50 -->
<!-- commit ca3413957c0c5ab79383caadade17e710d9c9b06 -->

> [!IMPORTANT]
> This is a dump of the original, human-written German draft of the documentation. It contains typos and is unpolished. It is not intended for direct use, but serves solely to disclose the development history on Zenodo, where there is no access to the Git log. On GitHub, it is more convenient to use the diff feature directly rather than working with this dump.

<!-- BEGIN FILE: 10_introduction.md -->

# Introduction

Die KI entwickelt sich mit enormer Geschwindigkeit, vor allem, was ihre Skalierung und die Breitenwirkung betrifft. Wir erleben einen Strukturwandel, der mit Herausforderungen, Gefahren und Ängsten einhergeht - sei es durch Verdrängung von Arbeitsplätzen, Ressourcenfragen oder mangelnde Transparenz bis hin zu Deepfakes. 
Zu den Schattenseiten gehört auch das Fluten der DSP (Digital Streaming Platforms wie Spotify, Apple Music und co) mit AI Slop, schnell und in Masse produzierten AI-Tracks, um mit minimalem Zeit- und Arbeitsaufwand Tantiemen abzugreifen. Das Phänomen ist zwar an sich nicht neu (das gibt es seit den Anfängen der Produktions- und Stock-Musik), erreicht durch KI aber ganz neue Dimensionen. Befeuert durch die mangelnde Transparenz vieler DSP, entsteht bei vielen Hörern berechtigterweise der Eindruck, KI sei ein Instrument der Täuschung und jeder KI-Song seelenloser Instant-Kitsch. Eine kurze Suche auf einem der üblichen Videoportale wird denn auch diverse Videos ergeben, die zeigen, wie man selbst im Handumdrehen zum “KI-Künstler” werden kann - sei es, um aus didaktischen Gründen aufzuzeigen, wie kaputt das System sei, oder um einen vermeintlichen Trick zum Gelddrucken zu promoten.
Was weitgehend fehlt, sind konstruktive Versuche, KI als Instrument der Kreativität zu verwenden. Was passiert, wenn man nicht Masse und Geschwindigkeit als Maßstab anlegt, sondern eine eigene künstlerische Vision und Verantwortung? Ich habe den Selbstversuch gewagt, diese Dokumentation ist der Bericht einer Expedition in den Latenzraum. Es ist ein persönlicher, prozessorientierter Einblick in die Konzeption und AI-Realisierung eines Albums mit insgesamt 13 Tracks. Ich operiere nicht im Modus einer theoriebildenden (Meta-)Studie, sondern in der Tradition der Practice-as-Research und des Critical Making: Erkenntnis durch Werkstattarbeit. Ich bin der Überzeugung, dass man manche Dinge selbst gemacht haben muss, um fundiert darüber sprechen können - alles andere ist schöne Theorie, die ihren Beweis allzu oft schuldig bleibt.
Die vorliegenden Ausführungen dokumentieren mein Vorgehen, meine Methodik und meinen Human Intent, in einem ansonsten durch und durch synthetischen Produkt. Ich lege auch die finalen Prompts für die einzelnen Tracks offen. Gleichwohl liefere ich keine Pipeline, keine Scripts und keine C&P-Templates. Dieses Repo enthält keine magische Maschine, die auf Knopfdruck Kunstwerke auswirft (ich weiß, manche träumen davon, aber es ist ein immanenter Widerspruch), es ist eher eine Wegbeschreibung: es steht jedem frei, mein Vorgehen zu adaptieren, aber es kostet Zeit, Arbeit und Reflektion. Es geht nicht um Reproduzierbarkeit, sondern Transparenz. Ich würde in Anlehnung an Open Source von Open Intent oder Open Concept sprechen. Es geht nicht darum, die eigene künstlerische Vision bis ins Kleinste zu erklären oder zu überhöhen - es soll einfach nur zeigen, was vom Menschen und was von der Maschine geschaffen wurde.
Im Verlauf dieser insgesamt 5 Monate (3 für die Erstellung des Albums, 2 weitere für die Dokumentation) sah ich mich mit vielen Problemen und Herausforderungen konfrontiert, darunter ethische (wie gibt man etwas zurück, wenn man sich durch Nutzung einer KI indirekt am Werk unzähliger Künstler bedient?), aber auch praktische (wie weist man die eigene Leistung nach?) und institutionelle (wie weise ich den Hörer auf die KI-Nutzung hin, wenn die DSP das im Kleingedruckten verstecken wollen?).
Zur Doku gehört auch, wie ich überhaupt auf die Idee zu diesem Projekt kam: im Mai stand die Geburt meines zweiten Kindes bevor. Ich gehöre zu der Kategorie (werdender) Vater, der sich um jeden Preis ablenken muss, um nicht durch Sorge um die eigene Frau bzw. durch Warten auf Tag X den Verstand zu verlieren - und Ablenkung bedeutet in meinem Fall das aktive Erschaffen, statt reinem Konsum (Bücher lesen, Streamen etc.). Arbeit, also Programmieren wäre an sich eine gute Ablenkung, aber dafür muss ich am Schreibtisch sitzen. Da ich meiner Frau aber helfen und mich um meinen Sohn kümmern wollte, brauchte ich etwas, was ich “zwischendurch” machen kann, sprichwörtlich zwischen Tür und Angel, in den kleinen Lücken, die der Familienalltag lässt. Es musste etwas am Handy sein - nur deswegen bin ich bei der Gemini App gelandet, weil sie genau dafür gedacht ist. Nach der Geburt meines Kindes, hatte ich die Kleine viel im Tragetuch und bin dann im Dunkeln mit Handy in der Hand durch den Flur geschlichen. Ich hatte sie auch im Tragetuch, während ich am Stehschreibtisch die Tracks gemastert habe. Ich führe das hier nicht aus, um eine rührende Geschichte zu erzählen, sondern weil ich es für wichtig halte, darauf hinzuweisen, dass das hier kein klassisches Schreibtischprojekt und kein Terminaloutput war, sondern eine sehr persönliche Auseinandersetzung mit dem Leben. Das Album Likeness ist kein reines Anschauungsmaterial für dieses Repo, es hat eine Geschichte und vor allem liebe ich jeden einzelnen Track darauf. Ich hätte es nicht veröffentlicht, wenn es nicht meinen eigenen ästhetischen Ansprüchen genügen würde. Ich höre diese Musik auch selbst, ich habe sie auch nach 5 Monaten noch nicht über. Es steht jedem frei, sie nicht zu mögen - Musikgechmack ist zum Glück eine zutiefst persönliche Sache -, aber man sollte diesem Album nicht seinen Status als Kunst absprechen.

Abschließend noch eine wichtige Abgrenzung: Ich werde mehrfach Google, Distrokid und einzelne DSP wie Spotify erwähnen. Dies dient nicht der Werbung, sondern allein der Transparenz. Es würde keinen Sinn machen, von “einem bestimmten Modellbetreiber” zu sprechen, da jeder Service seine Eigenheiten hat, die man ohne Kenntnis des Namens nicht einordnen könnte. Ich stehe mit keinem dieser Unternehmen in irgendeinem Abhängigkeitsverhältnis, abgesehen vom Offensichtlichen, dass ich Distrokid für die Distribution des Albums nutze und damit (eventuell irgendwann einmal) Tantiemen erziele.

<!-- END FILE: 10_introduction.md -->

---

<!-- BEGIN FILE: 20_vision.md -->

# Vision

## Show AND Tell

**A prompt without its artifact has no substance — an artifact without its prompt has no context. They are entangled relics of a performance in Latent Space.**

Wir können ein KI-generiertes Artefakt konsumieren, ohne seinen Prompt zu kennen - und wir können einen Prompt lesen, ohne das damit erzeugte Artefakt zu kennen. Beides ist für sich allein unvollständig. Selbst wenn man im Sinne des Poststrukturalismus argumentieren würde, dass die Wirkung des Artefakts allein von der Wahrnehmung des Rezipienten abhängt, so blieben die Umstände der Entstehung unbekannt. Es bleibt fraglich, ob an der Entstehung überhaupt ein Mensch beteiligt war.
Wenn wir die Generierung eines Artefakts durch ein Modell als eine ephemere und nicht (sicher) reproduzierbare Performance im Latent Space begreifen, dann wird offensichtlich, dass der Prompt als Ausgangs- und das Artefakt als Endpunkt dieser spezifischen Trajektorie untrennbar sind und als Ganzes betrachtet werden müssen.
Dieses Repository soll genau das leisten, es soll die Conception des Albums Likeness offenlegen, nicht um eine Deutungshoheit über die Lesart der Lyrics oder die Stimmung der Melodie einzufordern, sondern um transparent darzulegen, wie die finalen Artefakte entstanden sind - und wie viel menschlicher Intent hinter der Relization durch die AI steckt. Es bildet somit keine einfache Handreichung im Sinne klassischer Liner Notes, sondern ist integraler Bestandteil des Gesamtwerks. Ohne dieses Repo ist das Album nur ein Musik-Kompilat und ohne das Album ist dieses Repo eine rein theoretische Abhandlung ohne Substanz.
Dieses Repositorium dient nicht dazu, eine (subjektive) künstlerische Qualität zu behaupten (dieses Urteil muss jeder Rezipient für sich allein treffen), es dokumentiert für alle sichtbar den Umgang mit einem neuen “Instrument”.

## Kein Slop, kein Kitsch, keine Imitation
Für dieses Projekt habe ich folgende Ansprüche an mich selbst formuliert:
Kein Slop: die Tracks müssen sorgfältig konzipiert und kuratiert werden, also das Gegenteil von schneller, seelenloser Massenware. Jeder Track muss meinen eigenen ästhetischen Ansprüchen an Musik genügen. Auch wenn die KI dem Künstler sehr viel Arbeit abnimmt, muss er trotzdem Schweiß und Herzblut investieren - das ist unsere tradierte Erwartungshaltung an einen Künstler.
Kein Kitsch: auch wenn ich mehrfach bestimmten Klischees und Topen spiele und sich die Tracks einfach konsumieren lassen, diese Tracks sind kein bierernster, auf maximaler Affekt getrimmter Kitsch. Sie haben mehrere Ebenen und stellen Fragen an den Hörer. Sie suchen die Reibung, statt sie zu vermeiden.
Keine Imitation: auch wenn ich mich an bestimmten Künstlern und Genre-Klischees orientiere (und teilweise gezielt beim Lyric-Drafting nutze), ist das Ziel keine 1:1-Imitation, sondern das Finden eines eigenen Stils. Niemand braucht das AI-Double eines existierenden Künstlers (egal ob lebend oder tot), ich möchte meine eigenen Ideen ausdrücken.

## Radikale Transparenz: Das Diktat der Nicht-Täuschung 
Das Album Likeness wurde durch KI realisiert: Die KI hat gemäß Instruktion die Drafts für die Lyrics erstellt, die ich anschließend verfeinert habe, bevor diese gemäß Instruktion in Tracks aufgingen. Es war von Beginn an das Ziel, diesen Umstand absolut transparent zu machen, nicht nur, um *ehrlich* gegenüber den Rezipienten zu sein (der sich im Zeitalter von Deepfakes völlig zurecht oft durch KI getäuscht fühlt), sondern weil die gesamte Metatextualität der Lyrics auf diesem Faktum basiert. Die Texte können ohne das Wissen, dass hier eine KI singt, ihre intendierte Wirkung nicht erreichen. Es geht also nicht nur um Transparenz im Sinne von Offenlegung, die Künstlichkeit des Albums ist zentraler Bestandteil seiner Identität. Es geht nicht um die reine Imitation des Menschen, sondern um das Freilegen des “Nächsten Fremden”. Ein Verhehlen der KI-Beteiligung würde diese Versuchsanordnung entwerten.
Transparenz über die Beteiligung der KI zeigt auch deutlich, welche Teile eben *nicht* von der KI stammen, sondern das Resultat direkten menschlichen Handelns sind. Auch das Repositorium nimmt diesen Aspekt ernst: zwar ist der finale englische Text KI-generiert, der ursprüngliche deutsche, vom Menschen direkt verfasste Text ist jedoch über die Git-Historie aufrufbar und nachvollziehbar, das gilt ebenso für die sukzessive Entstehung der Dokumentation an sich.
Da ich für Likeness ausschließlich KI-Modelle von Google verwendet habe, tragen alle Artefakte die von DeepMind entwickelte SynthID, was ganz im Sinne der Conception ist.

## Keine KI-Persona
Teil der Nicht-Täuschung ist der Verzicht auf eine KI-Persona. Zwar weisen die Tracks ein kohärentes Stimmen-Profil auf (was sich aber von selbst ergeben hat) und das Album-Cover zeigt immer die (mehr oder weniger) selbe Frau, das ist aber nur Teil der ästhetischen Komposition (und ein Spiel mit der weiblichen Konnotation meines Vornamens im Englischen), aber das auf den Streaming-Plattformen hinterlege Artist-Profil zeigt mich als den Menschen hinter der KI-Umsetzung. Eine KI-Persone würde dagegen endgültig jede Authentizität zugunsten der reinen Künstlichkeit aufgeben, genaue diese Reibung benötige ich jedoch für die die Idee von “Likeness”.

## Die KI als Draft Engine
In der Conceptual Art setzt der konzipierende Künstler sein Werk nicht selbst um, er verfasst das Regelwerk und die Instruction, überlässt die tatsächliche Realization aber einem Assistenten (ggf. Einem Chief Assistent, der seinerseits ein Team von Assistenten leitet). Es liegt mir fern, die Nutzung von Gen AI als Conceptual Art zu bezeichnen - das wäre ein Kategorienfehler (man kann Conceptual Art mit Gen AI betreiben, aber Gen-AI-Nutzung selbst ist eben keine Cpnceptual Art) -, die eben beschriebene Kette lässt sich aber sehr gut übertragen: Der Operator verfasst den Prompt, die Instruction, die Realization übernimmt die KI. Der entscheidende Unterschied besteht darin, dass der Conceptual Artist den Output, sofern er keine systemischen Fehler aufweist (also gegen das Regelwerk verstößt), akzeptiert, während der Operator den Output in der Regel kuratiert (Iterationen verwirft oder den Ouput editiert).
Für Likeness sieht die Kette noch einmal komplexer aus: zunächst hat Gemini einen Draft für die Lyrics erstellt, diesen habe ich überarbeitet und daraus die finale Instruction abgeleitet. Diese Instruction habe ich aber nicht direkt in das audiogenerative Model (Lyria 3) eingegeben, sondern Gemini agierte hier als Orchestrator. Gemini hat damit die Rolle des Chief Assistent übernommen und gemäß meiner Instruction Lyria instruiert. Diese Proxy-Instruction habe ich nie zu Gesicht bekommen, das hat Google als Black Box gestaltet, was die Veröffentlichung der initialen Instruction aus meiner Sicht nur umso wichtiger macht, um beurteilen zu können, was die KI geschaffen hat und was genuin menschlicher Intent war.

## Echter Aufwand
Wir verbinden KI-generierten Content oft (und zurecht) mit Geschwindigkeit und Oberflächlichkeit: Das nächste Artefakt ist nur einen kurzen Einzeiler oder sogar nur einen Click entfernt. Dieser Output muss nicht unbedingt schlecht sein, ein guter Prompt kann sehr kurz sein und oft genug ist schlicht Glück im Spiel. Diese lucky One Shots sind aber so gut wie nie reproduzierbar und begründen keine Serie.

**Micro-curation selects the artifact; macro-curation validates the framework.**

Ein Album mit 13 Tracks ist die perfekte Nagelprobe für den Mythos vom schnellen Erfolg per Knopfdruck: ein guter Track ist schnell erstellt, 13 inhaltlich verwobene Tracks mit übergreifender klanglicher Identität machen Arbeit, erst recht wenn man die Lyrics vorab erstellt und die Artefakte digital nachbearbeitet. Insgesamt habe ich 3 Monate für die Erstellung des Albums gebraucht (als Hobby nebenher).

## Kein Glücksspiel, kein In-Painting
Die Versuchung ist groß, bei einer Generativen KI wie bei einer Slot Machine immer wieder am Hebel zu ziehen und einen Prompt unzählige Male zu iterieren, bis endlich der Output stimmt. Die Wahrheit ist: was nach ein paar Versuchen nicht klappt, klappt meiner Erfahrung nach nie. Stochastik lässt sich nur sehr schwer betrügen. Für mich bedeutete das in der Praxis: wenn eine Track Instruction nach maximal 10 Versuchen nicht funktionierte, habe ich eine Pause gemacht, sorgfältig analysiert, woran es gelegen haben könnte und erst dann mit überarbeitetem Prompt einen neuen Versuch unternommen. Nicht die Probabalistik ist der Feind, sondern die eigene Unfähigkeit, den eigenen Intent so zu formulieren, dass die KI das gewünschte (oder ein anderes, aber befriedigendes) Ergebnis produziert. Wer ein brauchbares Artefakt erst nach hunderten Iterationen desselben Prompts generieren konnte, hat vor allem eins getan: Tokens verbrannt und CO2 produziert.

## Die KI als Spiegel des Users
Teil des Setups war ein sehr umfangreicher Prompt, den ich über Gemini's *Langzeitgedächtnis* (eine spezielle Funktion der Endanwender-Version für Einzeluser) in sämtliche Interaktionen mit dem LLM eingefügt habe. Dieser Prompt enthält ein konzises, aber sehr persönliches Profil von mir als User. Was im ersten Moment narzisstisch anmutet, hat einen pragmatischen Hintergrund: ich will dem LLM nicht jedes mal erklären müssen, wer ich bin, welchen Kommunikationsstil ich bevorzuge und welche Art von Output ich mir wünsche. Die Folge daraus: Gemini hat so viel Hintergrundwissen, dass es meine “normalen” Prompts viel besser einordnen kann. Es wählt das passende Vokabular und achtet von selbst auf Feinheiten, die es in seiner Standard-Konfiguration anders oder gar nicht umsetzen würde. Die KI spiegelt mich und wird damit zu einem Likeness von mir als Initiator. 
Mehr dazu im entsprechenden Instruction-Kapitel.

## Die Subtext-Inversion
Das Lyrische Ich der Tracks auf diesem Album fühlt sich immer wieder entfremdet, konstruiert oder anderweitig unwirklich. Man kann das Lyrische Ich als Mensch lesen oder eben als KI, die ihre eigene Künstlichkeit reflektiert.
Entscheidend für den ursprünglichen Intent und in den Track Liner Notes nachvollziehbar: der KI war bei der Erstellung des Drafts für die Lyrics nicht bekannt, dass das Lyrische Ich als KI gelesen werden könnte, im Gegenteil, ich habe ihr wiederholt signalisiert, dass das ich eine menschliche Frau ist. Hätte ich der KI den Subtext offenbart, wäre die Doppelbödigkeit in plumpen Anspielungen kollabiert. Ich musste die KI “täuschen” bzw. Im Unklaren über die Metatextualität lassen, um den gewünschten Effekt in der Narration zu erreichen. Die KI hat zu keinem Zeitpunkt eine “erwachte KI” simuliert, sondern ist stets von einem Menschen ausgegangen - aus diesem Grund “funktionieren” die Lyrics auch ohne Wissen um die synthetische Natur des Lyrischen Ichs, können aber nicht ihr volle Breite entfalten.

## Folk als Belastungstest für Authentizität
​Folk gilt als die Bastion roher, ungefilterter menschlicher Erfahrung. Spezielle Sprechtechniken wie ASMR (hörbares Atmen und Artikulieren) erzeugen in Verbindung mit der bewussten Rohheit der Klangkulisse eine Intimität, Verletzlichkeit und Nähe wie kaum ein anderes Genre. Der Kontrast zur synthetischen Natur einer KI könnte nicht größer sein - und genau darin liegt der Reiz. Ein Cyberpunk-Track mit Glitcheffekten, Elektrosound und roboterhafter Stimme würde die Künstlichkeit des Lyrischen Ichs förmlich hinausschreien. Es gäbe keinen doppelten Boden und keine Reibung an den Erwartungen des Hörers, nur eine KI, die klingt, wie sich die Popkultur das Klischee einer KI vorstellt.
Folk als Genre zwingt uns dagegen in die menschliche Erfahrungswelt und ist tief geerdet in Oral History und Tradition (eine interessante Parallele zur KI, deren Latenzraum sich aus ihren Trainingsdateb konstituiert). Die Frage lautet: Kann ein generative KI ohne Bewusstsein und Emotionen durch bloße stochastische Nachahmung emotionale Resonanz bei einem menschlichen Hörer erzeugen? 
In diesem Zusammenhang spielt erneut der Aspekt der beabsichtigten Nicht-Täuschung eine Rolle. Folk lebt von Authentizität und Ehrlichkeit. Dieses Album ist ehrlich: Das Narrativ spielt zwar intern mit Täuschung (Lyrical Likeness), bleibt dem Hörer gegenüber aber absolut ehrlich. Und wie bei jedem Folk-Album ist sehr viel von meiner Persönlichkeit in die finalen Tracks eingeflossen. Wie viel von dieser Authentizität wirklich unbewusst ist - und wie viel bewusst inszeniert, lässt sich nicht final klären, aber das gilt für Menschengemachten Folk genauso. Authentizität war in der Kunst schon immer auch eine Frage der Inszenierung.
Da final eine KI die Lyrics “singt” (man verzeihe mir den Anthropomorphismus an dieser Stelle), entsteht eine interessante rekursive Kette: eine KI simuliert einen Menschen, der sich wie eine KI fühlt, die versucht ein Mensch zu sein, aber damit ab einem gewissen Punkt scheitern muss, weil sie eben synthetischer Natur ist. Wenn das audiogenerative Modell “Fehler” macht (geisterhafte Rückkopplungen, unnatürliches Atmen oder merkwürdige Betonung), dann erleben wir genau dieses Scheitern. Eine perfekte Imitation des Menschen oder ein Mensch, der diese Lyrics singt, könnten nicht den gleichen Effekt erzeugen. Ein Likeness ist *wie* sein Vorbild, kann aber niemals dieses *sein*.

## Der augmentierte Laie
Als Operator besitze ich keine klassische musikalische Expertise (Komposition, Instrumentenbeherrschung, DAW-Routine) und keine professionelle Musikhardware (Instrumente, Tonstudio etc.).
Die KI agiert in diesem Setup als kybernetisches Augment, das die Schwelle der Umsetzung soweit absenkt, dass ein Laie wie ich ein komplexes Projekt wie eben dieses Album umsetzen kann. Ziel ist dabei nicht das Gleichziehen oder gar Übertreffen menschlicher Profis mit Talent und jahrelanger Berufserfahrung 
(das wäre anmaßend und unrealistisch), sondern das Überwinden der klassischen ökonomischen und prozessualen Grenzen, um eine Qualität zu erreichen, die Resonanz ermöglicht, ohne durch grobe Unzulänglichkeiten zu scheitern.

## Die Ökonomische Schwellenwert-Eliminierung
Es ist eine Tatsache, dass die KI-Entwicklung menschliche Arbeitsplätze vernichtet. Dieser Verdrängungskampf ist auch in der Musikindustrie im vollen Gange. Die berechtigten Abwehrreaktionen ignorieren aber leider viel zu oft, dass das Absenken der Grenzkosten dem Individuum nie gekannte Möglichkeiten der kreativen Entfaltung eröffnet: für ein Album wie Likeness bräuchte man Songwriter, Musiker, Toningenieure und ein professionelles Tonstudio - für den einzelnen ist das unerschwinglich. Das Album Likeness hat keinem Menschen Arbeit weggenommen. Die Alternative zu seiner Produktion mit KI wäre seine Nicht-Existenz aus rein ökonomischen Gründen. Die KI hat die 
Produktionskosten für ein komplexes, sonst unwirtschaftliches Nischen-Konzeptalbum auf Null gesenkt und dessen Existenz überhaupt erst ermöglicht.
Wer nun einwendet, dass nicht jeder Laie Musik produzieren sollte, betreibt klassisches Gatekeeping und verdammit unzählige gute Ideen dazu, niemals umgesetzt zu werden. Jeder Mensch sollte Kunst produzieren dürfen - es obliegt dem Rezipienten, ob er sie konsumieren will. Damit will ich keinesfalls den massenhaften AI Slop verteidigen, der jeden Tag die Streaming Plattformen flutet. Da ich selbst 3 Monate Arbeit in die rein musikalische Produktion von Likeness investiert habe, dürfte offensichtlich sein, dass ich nur sorgfältig kuratierten Content mit “Herzblut” meine.

## Vom KI-Rohmaterial zum Leistungsschutzrecht
Eine der zentralen Fragen im Umgang mit KI und KI-generierten Artefakten im Speziellen betrifft die Frage der Urheberschaft. Nach aktuellem rechtlichen Verständnis ist ein KI-Artefakt gemeinfrei und ein Prompt nur in absoluten Ausnahmefällen schützenswert. Beides ist richtig. Würden wir klassisches Urheberrecht blind auf jeden Prompt anwenden, könnte sich jemand “Foto einer Katze, 4K” schützen lassen, oder - angewandt auf das Artefakt - jeden abmahnen, der ähnliche Bilder mit dem gleichen Simpel-Promot erzeugt.
Die Gemeinfreiheit des Artefakts ist eine Frage der Gerechtigkeit: für das Training der KIs wurde eine gigantische Masse menschlicher Schöpfungen verwendet. Auf eine stochastische Rekombination dieser Daten Urheberschaft geltend machen zu wollen, hieße der Allgemeinheit etwas wegzunehmen, was ihr gehört.
Die Musikbranche bietet hier eine überraschenden Ausweg: ein Volkslied oder die Komposition eines lange verstorbenen Künstlers sind gemeinfrei, die konkrete Aufnahme wird aber durch den Leistungsschutz an der Tonträgererstellung gegen unerlaubte Nutzung abgesichert und darf beliebig monetarisiert werden. Der Gesetzgeber hat das einst geführt, um die menschliche bzw. ökonomische Leistung zu schützen (wohlgemerkt ohne jeden Anspruch an irgendeine menschliche Schöpfungshöhe). Dieser Schutz ist freilich schlecht auf das reine Artefakt übertragbar. Die Leistung liegt hier primär beim Modellbetreiber, nicht beim Prompter. Wird aber dieses Artefakt (konkret der Track) händisch nachbearbeitet (z.B. Normalisierung, EQ oder Schneiden/Stitchen) ändert sich die Situation. Es entsteht ein neuer Tonträger, für dessen Ersteller der Leistungsschutz gilt. Ob das auch gilt, wenn die Artefakte durch eine automatisierte Pipeline gehen, darf bezweifelt werden, für händisches Editieren in einer DAW gilt es auf jeden Fall. Aus diesem Grund wurde jeder Track des Albums Likeness final von Hand gemastert.
Auf rechtstheoretischer Ebene könnte man von einem Transformations- oder Aneignungsakt in Anlehnung an John Lockes „mixing one's own labor“ sprechen: indem der Mensch Arbeit investiert, erwirbt er Recht am Eigentum. Die Almende bleibt unberührt: Da niemand ein Exklusivrecht auf Prompt oder Artefakt anmelden kann, bleiben alle Möglichkeiten offen.
Dieses Repo trägt dem durch seine Lizenzierung Rechnung; Über die Apache-2.0-Lizenz wird der gesamte textliche und methodische Unterbau des Albums Likeness der Allgemeinheit zur freien Nutzung überlassen – gebunden an die einzige Bedingung der Namensnennung (Attribution/Credit). 
Das gilt auch für die Lyrics. Theoretisch könnte ich zwar Urheberrecht geltend machen und sogar versuchen, die Musik-Tracks als hybrides Werk zu deklarieren, da ich die Texte händisch kuratiert habe - in der Praxis würde das aber auf eine zermürbende Diskussion (im Zweifelsfall vor Gericht) hinauslaufen, da ich für die Erstellung der Lyrics KI genutzt habe (und wieder die menschliche Schöpfungshöhe nachweisen müsste). Insofern halte ich es für pragmatisch und richtig, die Texte direkt freizugeben.

## Real-World-Pragmatismus
Der Zyniker mag fragen, warum ich die Tracks auf kommerziellen Plattformen monetarisiere und nicht hier (oder anderswo) kostenlos bereitstelle, wenn doch der Experimentcharakter im Vordergrund steht.
Es gibt dafür im Wesentlichen 3 Gründe:
Der Großteil von uns konsumiert Musik fast ausschließlich über Streamingplattformen, das kann man kritisch sehen, aber es ist schlicht die Realität. Die Tracks irgendwo zum Download anzubieten, würde die Reichweite auf praktisch null senken.
Auch wenn das Repo den Eindruck erwecken mag, es ginge primär um eine intellektuelle Fingerübung, so geht es am Ende doch um Musik in einer Qualität, die sich am “Standard” messen lassen kann und anschlussfähig ist. Sie soll nicht irgendwo mit dem Label “Experiment” abgelegt werden, sondern gleichberechtigt verfügbar sein.
Wie im nächsten Punkt dargestellt, muss das Album für die ethische Komponente dieses Werkes Einnahmen generieren, die ich spenden kann.

## Kybernetische Rekombination
Die heutigen “großen” Modelle wurden mit einer absurd großen Menge menschlichen Schaffens trainiert. Die Akquise dieses Materials ist regelmäßig Gegenstand von Diskussionen und Klagen. Man könnte von einer Art “Digitalen Kolonialismus” sprechen, es ist die “Erbsünde”, derer sich jeder KI-Nutzer bewusst sein muss. Aus meiner Sicht lässt sich dieser Schaden auch nicht mehr ungeschehen oder kompensieren, aber wir können die Zukunft ändern.
Wenn KI echte Künstler gefährdet und in der Folge weniger menschengemachte Musik entsteht (die wir als hochwertiges Trainingsmaterial benötigen), dann müssen wir gegensteuern. Aus diesem Grund habe ich mich entschieden, einen Teil der Brutto-Einnahmen des Albums für die musikalische (Nachwuchs-)Förderung zu spenden. Mein Distributor Distrokid bietet hier über das “Artists for Change”-Programm einen herrlich unkomplizierten Weg, Einnahmen direkt an GroundUp (und andere Initiativen) zu spenden. Gleichzeitig bietet die Aufnahme in die Gallerie von “Artists for Change” eine sehr einfache Möglichkeit, meine Spende zu beweisen (ohne Spendenquittungen hochladen zu müssen).
Zum Zeitpunkt, da dieses Repo und das Album online gehen, habe ich eine fixe Spende von 25% je Track eingestellt. Das ist ein für mich “spürbarer” Einschnitt (anders als symbolische 1%). Der Zyniker mag fragen, warum ich nicht 100% spende.
Auch wenn dieses Album ohne KI nicht existieren würde, habe ich doch massiv Arbeit investiert und die künstlerische Vision definiert. Die KI war nur mein Instrument, nicht der Künstler. Mir entstanden Ausgaben für Services (Modellbetreiber, Distributor) und Hardware (Audiointerface, Kopfhörer). Es ist kein Geheimnis, dass mit Streaming allein kaum Geld zu verdienen ist, insofern ist fraglich, ob ich am Ende überhaupt bei +/- 0 wieder rauskomme.
Man darf das Steuerrecht nicht unterschätzen. Nur weil Distrokid die Spende direkt abführt, heißt das nicht, dass das Finanzamt das nicht als meine Einnahmen deuten könnte. Da GroundUp meines Wissens in Deutschland keine Gemeinnützigkeit genießt, kann ich die Spende auch nicht geltendmachen (und selbst das ist an Schwellenwerte gekoppelt). Im Worst Case könnte das bei 100% Spenden zu der paradoxen Situation führen, dass ich keinen Cent Geld bekomme, aber auf die Spendensumme volle Steuern zahlen darf. KI-Kritikern würde zwar genau dieses Szenario zweifellos gefallen, aber jedem, dem der konstruktive Ansatz meines Vorhabens bewusst ist, wird erkennen, dass das absurd wäre. Jedes Modell, das von Künstlern, die KI nutzen, verlangt, etwas abzuführen, muss dem Künstler einen Gewinn zu gestehen. 25% ist in diesem Sinne weder besonders großzügig, noch rein symbolisch - es ist einfach mein Versuch, meinem persönlichen Anspruch an verantwortungsvollen KI-Umgang gerecht zu werden. Dass bei ausbleibendem Gewinn wenig bis gar nichts gespendet werden kann, ist für mich persönlich ok - statt pauschal sollte nach Erfolg abgeführt werden, andernfalls würden “kleine” Anwender von KI übermäßig stark belastet, während die kommerziell erfolgreichen für verschwindend geringe Beiträge die Almende abschöpfen können.
Abschließend noch ein ehrliches Wort dazu: die Chance ist groß, dass dieses Album nie einen echten Euro erwirtschaftet und damit auch nichts gespendet wird. Die Major Labels haben z.B. auf Spotify massiv Druck ausgeübt, sodass Tracks erst ab einer Mindest-Anzahl an Streams (aktuell 1.000 in 12 Monaten) überhaupt bei der Ausschüttung berücksichtigt werden. Damit sichern sich die “Großen” die Mehrheit der Einnahmen auf Kosten jedes kleinen Nischenkünstlers. Wie man dazu steht, ist jedem selbst überlassen. Ich sehe es pragmatisch: wenn kaum jemand diese Musik hört, habe ich auch niemandem etwas weggenommen - und wenn die Musik doch Erfolg hat, fließt ein Teil zurück in den Pool der echten Musiker, ohne die dieser Erfolg nicht möglich gewesen wäre.

## Die Git-Historie als Audit-Trail und Performanz
Bei ausreichend großen Mengen KI-generierten Texts schlagen automatische KI-Detektoren unweigerlich an – erst recht, wenn Modelle wie Gemini beim Übersetzen/Verfeinern unsichtbare Wasserzeichen (SynthID) hinterlassen. Das gilt unabhängig davon, ob die KI einen Text frei schreiben oder lediglich übersetzen soll. Will ein Nicht-Muttersprachlicher wie ich mittels KI einen sauber übersetzten Text erzeugen, ist das Ergebnis unweigerlich KI-generiert. Wie lässt sich also später sauber nachweisen, was ich vorgeschrieben habe? Github bzw. Git liefert eine einfache Antwort: indem ich den ursprünglichen deutschen Text einchecke und zum Teil der Git-History mache. Wer also den ursprünglichen Text, der fast ausschließlich von Hand entstand, sehen möchte, muss nur in der Git-History zurückgehen und sieht die klassisch menschliche Schöpfung (inklusive Schreibfehlern und teils sehr rohen Formulierungen, da ich das meiste spät abends oder früh morgens am Handy getippt habe - ohne Korrektur oder Wortvorschläge). Die Timeline dokumentiert zugleich die sukzessive Genese des Repos (auch wenn die Commits meist in großen Abständen erfolgten, weil ich keine Lust auf Git auf dem Handy hatte). Die Anbindung an Zenodo dient schließlich der zweifelsfreien sauberen Verortung der Publikation in der Zeit.

## Der Zenodo-Relics-Vault
Parallel zu diesem Repo existiert ein restricted Zenodo-Repo, in dem ich alle KI-Artefakte, Ardour-Sessipns, Masters und sonstige Medien (z.B. für das Coverart) noch vor dem Release des Albums hinterlegt habe. Die entsprechenden Dateien sind über SHA-256-Hashes in diesem Repo referenziert. Sollte es jemals zu einem Teakedown oder Streitigkeiten kommen, weil jemand meine Tracks für sich beansprucht, als Imitation verunglimpft oder meine menschliche Leistung in Zweifel zieht, dient das Zenodo-Repo mit seinen über jeden Zweifel erhabenen Zeitstempeln als mein “Notar”. Das mag für Außenstehende paranoid wirken - wer macht sich schon die Mühe, ein Nischenalbum zu attackieren? -, aber niemand sollte unterschätzen, was mittels Bots für ein Schindluder auf Youtube betrieben wird, um über Content-ID-Meldungen Geld abzuschöpfen. Zudem will ich hier eine Musterlösung vorlegen, die einen Takedown zwar nicht verhindern, aber den Widerspruch dagegen deutlich vereinfachen kann. Gerade kleine Indie-Künstler ohne Label (und entsprechender Abteilung) bietet Zenodo eine aus meiner Sicht geniale Lösung, ihr geistiges Eigentum abzusichern.

<!-- END FILE: 20_vision.md -->

---

<!-- BEGIN FILE: 30_instruction.md -->

# Instruction

## Setup
Auch wenn ich beruflich inzwischen primär agentische Setups in der IDE verwende, habe ich mich für Likeness bewusst gegen einen agentischen Ansatz oder gar eine automatisierte Pipeline entschieden und stattdessen mit der B2C-Gemini-App von Google gearbeitet. Das hat mehrere Gründe.
Die App ist mit all ihren Features komplett über mein Google-One-Abo abgedeckt. Solange ich mich innerhalb meines Computing-Budgets bewege (das ich noch nie gerissen habe), zahle ich nichts drauf, wohingegen ich bei API-Nutzung pro Request zahlen müsste. Zwar ist in meinem Google-Abo ein kleines Cloud-Volumen über die Dev-Features inkludiert, aber gerade Audio-Generierung würde das sehr schnell auffressen.
Während ich an Likeness gearbeitet habe, habe ich nur wenig Zeit außerhalb der Arbeit am Rechner verbracht. Meist hatte ich nur das Handy zur Verfügung. Die App war schlicht praktisch.
Ich nutze sehr gern die nur in der B2C-App verfügbare *persönliche Kontext* von Gemini sowie die umfangreiche Vorkonfiguration des Modells. Wer schon einmal via API mit dem “rohen” Modell zu tun hatte, weiß, wie schwierig es ist, das Modell zu ordentlicher Arbeit zu bewegen. Ich greife hier also gern auf die Expertise zurück, die Google in seinen “Showcase” steckt.
In der Gemini-App agiert Gemini als Orchestrator für die anderen Spezialmodelle wie eben Lyria für die Audio-Generierung. Es ist nicht so, als hätte ich keine Lust, direkt mit dem Audio-Modell zu interagieren, aber mich reizte schlicht dieser Proxy-Aspekt. Zum einen wollte ich in Aktion sehen, was Google da gebaut hat - und zum anderen wollte ich wissen, welchen Einfluss meine spezifische Konfiguration auf Geminis Orchestrator-Tätigkeit haben würde.

## Die Blackbox
Dass KI eine “Blackbox” ist, ist eine oft zitierte Formulierung. Zwar ist die Technologie nicht magisch - schließlich wurde sie von Menschen konstruiert und folgt den Gesetzen der Mathematik -, aber der Prozess der Genese bleibt für uns verborgen. In diesem Setup gilt das umso mehr, als mir die Konfiguration der Modelle (ihre Systemprompts, Guardrails etc.) jenseits meiner eigenen Prompts gänzlich unbekannt sind (nur weniges kann man nachlesen oder sich erschließen). Ich betrachte das nicht als Problem (das gilt schließlich für jede proprietäre Software), aber man muss sich dessen bewusst sein. Dieses Experiment ist insofern open, als ich sehr viel von meinem Vorgehen offenlege, die verwendete Technik ist aber proprietär und latent: Open Concept statt Open Source.

## Persönlicher Kontext
Eine ganz entscheidende Komponente ist meine Personalisierung in der Gemini-App. Dieses auf Privatuser beschränkte Feature heißt immer mal anders und wandert im UI von Version zu Version. Aktuell läuft es unter dem Label “Persönlicher Kontext”. Dieses Feature erlaubt es (ähnlich Agentrules) an zentraler Stelle Informationen bzw. Anweisungen zu hinterlegen (entweder über einen Prompt “Merke dir für dir Zukunft…” oder direkt über das Menü). Diese Anweisungen greifen immer, auch in Gems, wirken also wie ein Super-Systemprompt. Als ich 2025 anfing, mit der Gemini-App zu arbeiten, habe ich eine Woche damit verbracht, Gemini über diese Personalisierung an meine Bedürfnisse anzupassen - ich hatte keine Lust auf die typische KI-Höflichkeit und ich wollte bei Fachfragen nicht jedes mal erklären müssen, dass ich Software Engineer und studierter Archäologe bin. Also habe ich ihr eine Art Kurzbiografie und Kommunikationsprotokoll geschrieben - zunächst in der Ich-Perspektive. Das hat allerdings bei längeren Chats mit einsetzendem Context Rot zu skurrilen Fehlreferenzierungen geführt (die KI konnte nicht mehr sauber zwischen mir als User und seiner eigenen Persona unterscheiden). Also habe ich es auf die dritte Person (“der User”) umgestellt und die einzelnen Rubriken mit Pseudo-Keys wie “USER_INTERACTION_PROTOCOL” versehen (eine Empfehlung der KI selbst). Das Ergebnis war eine wie ausgewechselte KI. Wo klassisches Persona Prompting das Actors Dilemma triggert (die KI reproduziert das Klischee der Rolle, scheitert aber am Inhalt), änderten meine Anweisungen nichts an der Persona des Modells (es war immer noch der hilfreiche Assistent), aber es konnte mich nun viel besser adressieren. Die Antworten waren kompakter, auf den Punkt und angenehm gnadenlos mit Kritik. Dieses Setup funktionierte so gut, dass ich es seit Dezember 2025 nicht mehr geändert habe. Ich habe es also nicht für dieses Album entworfen, sondern mitgebracht. Diese ausführliche Personalisierung verbraucht einiges an Tokens und Attention. Da es aber bessere Ergebnisse generiert, erfüllt es seinen Zweck. Das umfangreiche Profil ist auch der Grund, warum ich ansonsten mit recht simplen Prompts arbeiten kann. Das Profil verschiebt die Trajektorie im Latenzraum in eine so ungewöhnliche Ecke (die Kombination aus Software-Entwicklung, Archäologie, maximaler intellektueller Reibung, Schreinern, Gärtnern und Character-First-Ansatz beim kreativen Schreiben), dass selbst ein “stinknormaler” Prompt daran nichts mehr ändern kann. Ich ziehe das Modell also in eine ganz bestimmte Richtung, ohne es übermäßig einzuschränken.
Diese Personalisierung ist ein Kernelement der “Likeness”, um die es in diesem Album geht. Wenn ich den Entwurf für die Lyrics eines Tracks anfordere, dann berücksichtigt die KI mein Profil. In ihrem KI-typischen Bedürfnis, mir zu gefallen und nützlich zu sein, spiegelt sie mich, ohne zu einer Kopie von mir zu werden.
Das Prinzip besteht also darin, der KI zu beschreiben, mit wem sie interagiert (als ihren Rezipienten). Aufgebaut sind die Informationen wie folgt:
USER_COGNITIVE_ARCHITECTURE: Ausführungen zum Denkertyp, z.B. dass ich zur Minderheit der analytisch-vernetzend denkenden Menschen gehöre - damit die KI weiß, dass ich z.B. eher top-down-Ausführungen beorzuge
USER_INTEL_PREFERENCE: Was genau interessiert mich, wenn ich nach einem Sachverhalt frage? In meinem Fall z.B. der Fokus auf das Wie und Warum. - damit die KI sich auf die Mechanik "dahinter" konzentriert
USER_PROBLEM_SOLVING: Beschreibt wie ich mit einem Problem umgehe - hilft der KI, mir bei der Lösung eines Problems zu assistieren
USER_INTERACTION_BIAS: definiert den Kommunikationsstil (in meine Fall u.a. keine KI-Höflichkeit)
USER_COMMUNICATION_LOGIC: Framet den Grund für die Kommunikation
USER_CV: extrem kompakter beruflicher Werdegang - hilft der KI zu erkennen, in welchen Feldern ich mich auskenne
USER_DOMAIN_FUSION: hier betone ich noch einmal die Kombination aus Geisteswissenschaft, Software-Entwicklung und Handwerk - das hat mit die stärkste Auswirkung auf die Trajektorie im Latenzraum
USER_CREATIVE_LOGIC: Ein paar Kernpunkte für kreative Themen (z.B. "character-driven") - für dieses Projekt sehr wichtig
USER_PRACTICAL_INTERESTS: Akdemisch für "Hobbies" - das verhindert, dass die KI ausschließlich im Elfenbeinturm verharrt.

Mein konkrete Umsetzung veröffentliche ich hier bewusst nicht. Ziel ist eben nicht, eine Copy-and-Paste-Vorlage anzubieten, sondern mein Konzept zu erklären. Ich lege die Mechanik offen - wer es nutzen möchte, muss sich selbst damit beschäftigen (und sich selbst besser kennenlernen).

## Von der Idee zum Track
Die Tracks entstanden nach folgendem Ablauf:
* Ideenfindung: meiste hatte ich die Idee direkt, bei manchen Tracks entwickelten sie sich aus dem Dialog mit der KI (darauf gehe ich je Track ein)
* Initialer Drafting-Prompt für Gemini - optional: Modifizierung oder Neugerierung, oft auch direktes Einkürzes
* Händisches Überarbeiten
* Prüfung ausgewählter Lines sowie des Tracks als Ganzes durch die KI (primär Grammatik bzw. Semantik)
* Finale Kuratierung
* Verfassen der Instruction für die Trackgenerierung - optional: Überlegungen mit der KI zum Arrangement oder Verfassen eines kurzen Abstracts zur intendierten Wirkung (manchmal wieder verworfen)
* Generierung
* Prüfen des Artefakts 
* Erneute Iteration mit geänderten Settings (Ausnahme: Hollow)
* Händisches Mastering in der DAW - optional: Schneiden/Stitchen mehrerer Artefakte 

## Die Lyrics-Genese

### Ablauf
Dass ich die Lyrics vorab erstelle und nicht im Zuge der Audiogenerierung gleich mit erzeugen lassen, hat mehrere Gründe:
* Die Kopplung Gemini/Lyria ist meiner Erfahrung nach eher schlecht bei der simultanen Genese. Das Ergebnis klingt oberflächlich durchaus gut, aber die Erzählung bleibt platt, die Sprache wirkt hölzern und es kommt meist zu harten Fehlern, die den Song disqualifizieren.
* Selbst ein elaborierter Prompt erfüllt selten die Schöpfungshöhe. Das Schreiben bzw. Kuratieren der Lyrics schärft die Rolle des Menschen im Prozess (ob die Lyrics menschen- oder rein maschinengemacht sind, gehört auch zu den Fragen, die im Zuge der Distribution gestellt werden) - ich bin zwar kein Singer, aber wenigstens Songwriter.
* Erst das getrennte Schreiben der Lyrics erlaubt die Ausarbeitung einer konkreten Erzählung. Mit Prompts lässt sich eine abstrakte Idee vorgeben, für eine dichte, kohärente Story braucht es ausgearbeitete Lyrics. Man kann mit Sprache auch nicht “spielen”, wenn sie erst ad hoc erzeugt wird.
* Lyrics sind für ein audiogeneratives Modell keine austauschbare Dekoration, die wie eine Tapete auf jede Wand geklebt werden kann. Die Lyrics sind Teil des Prompts und nehmen damit direkt Einfluss auf die Gewichte des Latenzraums und damit auf die Stimmung. Zudem sind sie Teil des metrischen Korsetts. Kurzum: mit den Lyrics lässt sich sehr viel stärker Einfluss auf die Melodie und den Charakter des finalen Tracks nehmen als mit zehnmal so viel Anweisung.

### Der Stil
Jeden Lyrics-Draft habe ich mit “Schreibe im Stil von Taylor Swit's Folkmore Alben” in Auftrag gegeben. Für einige Songs wie Homecoming habe ich zusätzlich auf John Keats zurückgegriffen. Das im “Stil von”, anstelle von “Du bist X und schreibst einen Song ...” ist dabei entscheidend: Es geht nicht darum, eine Taylor-Swift-Kopie zu erschaffen - das wäre genau die Art von AI Content, den ich ablehne -, sondern der KI einen stilistische Orientierung zu geben. Warum ausgerechnet Taylor Swift? Taylor Swift zeichnet sich auf ihren Alben Folklore und Evermore durch die ihr eigene elevated diction (hohes/altes Sprachregister, das aber gezielt gebrochen wird) und die Fähigkeit, Emotionen bodenständig und intim zu verhandeln, aus. Hinzu kommen ihre charakteristischen Bridges, die den Song oft in eine andere Richtung kippen lassen, als zunächst suggeriert. Das sind zumindest die Eigenschaften, die ich an ihr schätze, weniger mag ich ihre Obsession für Herzschmerz.
Diese Eigenheiten kann man einer KI auch vorgeben, ohne Taylor Swift beim Namen zu nennen (siehe hierzu “Funktionale Disaggregation”), weil sich aber die konkrete Ausformung und die Gewichtung schwer verbalisieren lassen (bzw. lange Aufsätze erfordern würden), fühlt sich das Ergebnis nicht organisch an. “Taylor Swift” und “Folkmore” fungieren gewissermaßen als zusätzliche Gravitationszentren, um das Modell in eine bestimmte Richtung zu zwingen (siehe “Semantic Anchoring”). Da ich für die Songs zugleich Themen vorgebe, die eher nicht Swifts bestehendem Oevre entsprechen, und mein *persönlicher Kontext* eine ganz andere inhaltliche Ausprägung fordert, ist das Ergebnis eigenständig. Welche Rolle hier der *persönliche Kontext* spielt, lässt sich beispielhaft an Homecoming beobachten, wo ich testweise darauf verzichtet habe. Das Ergebnis war die übliche Collage aus Versatzstücken, zu denen die KI im Standardmodus neigt.
Der Swift-Vektor kam nur beim initialen Draft zum Einsatz. Die Aus- und Überarbeitung der finalen Lyrics erfolgte getrennt davon, um die Eigenständigkeit zu gewährleisten. Die finale Instruction für die Audio-Generierung verzichtet komplett auf solche direkten Referenzen und arbeitet ausschließlich mit abstrakten Anweisungen. Googles Guardrails würden Namen existierender Künstler auch gar nicht akzeptieren.
Da ich mir vorstellen kann, dass mein Vorgehen bei dem einen oder anderen Ablehnung oder zumindest Unwohlsein verursacht, noch ein Wort zur künstlerischen Praxis: das Bild vom Genie im luftleeren Raum, das allein aus sich selbst heraus wirkt, ist eine romantische Illusion. In der Praxis orientieren wir uns immer (un)bewusst an anderen. Je erfolgreicher ein Künstler ist (Taylor Swift, Michael Jackson etc.), umso eher werden andere ihn zum Vorbild nehmen. Entscheidend ist, dass man über die reine Kopie hinausgeht. Für mich ist dieses Vorgehen eine simple Arbeitserleichterung in der frühen Konzeptionsphase.
Ansonsten gibt es keine Parameter außer denen des Persönlichen Kontexts und den in den Track-Linernotes ausgewiesenen.

### $10-Dollar-Wörter
Die Lyrics sind reich an schwierigen, sperrigen und eher seltenen Wörtern. Diese tauchen zuweilen bereits im ersten KI-Entwurf auf, sind also Teil des angesteuerten Bereichs im Latenzraum, oft habe ich sie aber auch erst selbst bei der Überarbeitung eingebracht. Das ist weniger die Marotte eines sprachbegeisterten Philologen und gewiss kein Versuch, besondere Belesenheit vorzutäuschen (das würde auch immer nach hinten losgehen, weil gerade im AE plain spoken klar bevorzugt wird), sie dienen vielmehr als zusätzliche Vektoren für die Musikgenerierung. Wie bereits ausgeführt, haben die Lyrics maßgeblichen Einfluss auf den resultierenden Track. In der Popmusik und im Trainingsmaterial des Modells dominiert plain spoken, hochgestochenes Vokabular wird bewusst gemieden. Wer diesem Vorbild folgt, wird genau das bekommen: vertraute Popmusik. Da mein Stil ein eigenständiger Stil sein soll, nutze ich nicht nur die Länge der Zeilen, sondern auch die Semantik und Phonetik der einzelnen Wörter, um das Modell in Bereiche zu navigieren, die eher selten angesteuert werden. Am besten lässt sich das an Homecoming beobachten, diese an Arioso oder Parlando erinnernde Performance wäre mit *konventionellem* Text kaum zu erreichen gewesen. Das sprachliche Register dient hier also tatsächlich der Distinktion, aber nicht vom Publikum, sondern vom statischen Mittelmaß des Latenzraums.

### Die Struktur
Da Lyria zum Zeitpunkt, da ich den Tracks gearbeitet habe, nur maximal 3-Minuten-lange Tracks generieren konnte, stand ich bei allen Tracks unter ziemlichen Zeitdruck. Intuitiv würde ich eher Tracks mit 5 Minuten oder länger erstellen wollen, aber das war technisch nicht möglich. Das Stitching mehrerer Artefakte wäre theoretisch möglich, scheitert in der Praxis aber an den feinen Abweichungen zwischen ansonsten sehr ähnlichen Artefakten (zumal die getrennten Lyrics ihr übriges zur Verschiedenheit beitragen werden). Da die klassischen Strukturen (wie z.B. Strophe, Chorus, Strophe, Chorus, Bridge, Chorus, Outro) zu viel Zeit beanspruchen würden, musste ich kompaktere Formate entwickeln. Ich habe die einzelnen Blöcke auf 6 oder 4 Zeilen eingedampft und nur sparsam mit Redundanzen (der klassische Chorus ist qua Definition redundant) gearbeitet, indem ich z.B. den zweiten Chorus als Reprise gestaltet habe.

### Vermeidung des Self-Preference Bias
LLMs neigen dazu, ihren eigenen Output als besonders hochwertig anzusehen. Ich habe daher regelmäßig neue Chats angelegt, um den Context zurückzusetzen und mit einem *frischen* Modell zu arbeiten. Das Modell ist dann eher geneigt, Fehler bzw. Unsauberkeiten als solche zu benennen. Zusätzlich verzichte ich während der sprachlichen Feinabstimmung auf den *persönlichen Kontext* und nutze stattdessen die Default-Persona. Dadurch verschieben sich die Gewichtungen und das Modell geht mit dem Text anders ins Gericht. Um zu verhindern, dass der Text wieder ins statistische Mittelmaß kollabiert, ist es wichtig, diese Prüfung rein logisch und stilistisch durchzuführen (“Was würde ein Native Speaker als unsaubere Sprache empfinden?”). Gerade diese Sprachprüfung ist für mich als Nicht-Muttersprachler essentiell (wobei ich mir ziemlich sicher bin, dass am Ende doch diverse Germanismen durchgerutscht sind und Hollow ist das beste Beispiel, dass einem auch Grammatik-Schnitzer durchrutschen, wenn man nicht pedantisch genug prüfen lässt).

### Vorgeplänkel
Bei einigen Songs (vor allem Wrecker) bin ich nicht direkt mit der Lyrics-Generierung eingestiegen, sondern habe zuerst eine allgemeine Unterhaltung mit der KI über Genre-Konventionen etc. geführt. Die Idee war, einen gewichtigeren, organischen Kontext zu schaffen. Meiner Wahrnehmung nach war das aber nicht zielführend. Ich habe deutlich bessere Ergebnisse erzielt, wenn ich direkt mit den Lyrics eingestiegen bin.

## Prompting Techniques
Im folgenden umreiße ich die Techniken, die ich bewusst einsetze. Dabei berücksichtige ich nicht, ob diese Techniken unter diesen oder anderen Namen im Netz kursieren. Ich bin Autodidakt und meide klassische Ratgeber und Tutorials. Wenn ich hier an Bekanntes anknüpfe, dann nur, weil ich in der Besprechung mit der KI darauf gestoßen bin.

### Semantic Anchoring
Der Prompt definiert die Trajektorie des Modells im Latenzraum. Jeder Inputtoken gibt einen Impuls in eine bestimmte Richtung. Allgemeines Vokabular oder solches mit mehreren Bedeutungen übt einen geringen Impuls aus, spezifisches Vokabular zieht das Modell massiv in seine Region. Man kann sich das wie eine Raumsonde vorstellen, deren Flugbahn je nach Gravitation des Objekts, an dem sie vorbeifliegt, unterschiedlich stark abgelenkt wird. Eine massive Gravitationsquelle hat dabei signifikant mehr Einfluss als viele schwache. Das sind die zuvor erwähnten 10-Dollar-Wörter oder etablierte Genre- oder Künstlernamen. Je exotischer oder einschlägiger ein Vektor ist, um so besser kann man ihn als semantischen Anker verwenden. Zu dieser Technik gehört aber auch, im Zweifelsfall gezielt nach Synonymen zu suchen. In meinem Fall hat sich z.B. Archäologie als Sackgasse erwiesen, weil der Begriff popkulturell zu stark aufgeladen ist für meine Zwecke. Seit ich von “Altertumswissenschaften” spreche, ist das Modell deutlich wissenschaftlicher unterwegs.

### Funktionale Disaggregation
Das genaue Gegenteil zum Semantic Anchoring. Manchmal haben Wörter eine ungewollte Konnotation oder sind aus anderen Gründen ungeeignet, Buzzword-Gefahr. Dann zerlege ich den monolithischen Vektor in seine weniger gefärbten Bestandteile. Ich mache das eher ungern, weil die Prompts dadurch länger und verrauschter werden, aber manchmal lässt es sich nicht vermeiden. Man ersetzt damit letztendlich einen einzelnen Vektor durch eine Wolke.

### Persona Prompting
Der Klassiker, der dem Modell eine Rolle vorgibt “Du bist ein ...”. Ich benutze diese Technik nur sehr, sehr selten, weil sie fast immer das Klischee der Rolle triggert und den Output verschlechtert. Für dieses Projekt habe ich sie nur bei “Journey” genutzt, um das Modell in die Rolle von Kaspar David Friedrichs Wanderer über dem Nebelmeer zu zwingen. Das habe ich dort aber auch nur gemacht, weil das keine definierte Rolle. Die KI muss sie synthetisieren.

### Inverse Persona Prompting
Meine Lieblingstechnik, die ich durch den persönlichen Kontext praktisch immer nutze. Anstatt dem Modell vorzugeben, welche Rolle es spielen soll, definiere ich mich als den Rezipienten. Das Modell bleibt mehr oder weniger in seiner Standard-Persona, passt aber sein Vokabular und sein Verhalten an. Gerade wenn man sich selbst als Experte in einem Gebiet definiert, bekommt man meiner Erfahrung nach sehr viel bessere Ergebnisse. Zum einen taucht das Modell tiefer in die Materie ein, statt an der Oberfläche zu bleiben, und zum anderen ist es vorsichtiger. Um zu gefallen, wird es eher auf Unsicherheiten oder abweichende Theorien hinweisen, als Gefahr zu laufen, vom User korrigiert zu werden. Für dieses Projekt war sicher der Hinweis, dass mir character-driven Storytelling besonders wichtig ist, entscheidend.

### Positive Prompting
Ich versuche, wann immer möglich, auf die Negierung von Konzepten zu verzichten. Das Modell hat schließlich mit dem gleichen Problem wie der Mensch zu kämpfen: man kann nicht nicht an einen rosa Elefanten denken. Eine Anweisung wie “keine hölzernen Dialoge” *vergiftet* den Prompt mit einem Begriff, den man ja gerade vermeiden möchte. Zudem bleibt ohne Zielvektor, was genau das Modell mit der Anweisung machen soll. Man steigt schließlich auch nicht in ein Taxi und sagt zum Fahrer “Fahren Sie mich nicht zum Flughafen”. Wenn das Modell die Lücke füllt, dann mit dem statisch Wahrscheinlichsten - und das ist selten das, was man will. Wenn ich also etwas negieren muss, weil ich es nicht positiv formulieren kann, versuche ich wenigstens eine Richtung vorzugeben, “nicht A, sondern B”. Um beim Gleichnis mit dem Taxi zu bleiben "Fahr mich zum Bahnhof, aber nicht über die Autobahn".

### Semantische Induktion
Eine Spielart des Semantic Anchorings: diese Technik nutze ich gern für die Bildgenerierung, aber sie kam auch bei diesem Projekt zum Einsatz: statt dem Modell eine Liste an Requisiten vorzugeben, definiere ich ein Gefühl, einen Sinneseindruck oder etwas anderes nicht direkt konkret Abbildbares und lasse das Modell die passenden Chiffren finden. Das Ergebnis ist oft organischer und in sich stimmiger.

## Die Instruction für die Musikgenerierung
Die finalen Anweisungen für die Track-Generierung habe ich grundsätzlich in einem neuen Chat, aber mit *persönlichem Kontext* ausführen lassen. Die Anweisungen sind in einen Setup- und einen Lyrics-Block unterteilt und verwenden Markdown.

### Setup
Das Setup arbeitet mit einfachen Keys wie Genre, Instrumentation, Beat, Vocals. Das Schema ist nicht einheitlich, weil ich hier und da Stellschrauben nachstellen musste. 
Für die Vocals habe ich grundsätzlich Mikrofon-Nahbesprechung, ASMR und Intimität definiert. Emotionen wie “melancholisch”, “euphorisch” habe ich weitgehend gemieden, weil es meiner Beobachtung nach kein glaubwürdiges Ergebnis erzeugt. Ich verlasse mich lieber auf die Fähigkeiten des Modells, die Stimmung organisch abzuleiten.
Bei vielen Tracks habe ich zudem ein kurzen Text zur intendierten Wirkung oder der klanglichen/narrativen Evolution verfasst. Das war nicht immer nötig. Manche Tracks funktionierten ohne, also nur über die Grundparameter und die Lyrics am besten. Andere brauchte es zwingend, vor allem dann, wenn ich eine Klangkulisse haben wollte, die der statisch wahrscheinlichsten Repräsentation der Lyrics widersprach. Die besten Beispiele dafür sind Shapeshifter und Jobs, wo ich gegen Jahrmarktgrusel und drögen Büroalltag ankämpfen musste.

### Lyrics
Für die Strukturierung der Lyrics verwende ich ebenfalls Markdown, weil die bei Lyrics oft üblichen eckigen Klammern zuweilen Googles Guardrails getriggert haben. Das war reine Heuristik: Das Modell vermutete aufgrund der Formatierung einen C&P existierender Lyrics. Die Generierung wurde nicht abgebrochen, aber ich wollte einen potenziellen Fallstrick neutralisieren. Mit Markdown gab es nie Probleme. Weder wurde irgendeine Guardrail aktiviert, noch las das Modell die Headings als Lyrics.
Auf reine Vokalisationen (wie z.B. Seufzen oder Summen) habe ich in den Lyrics weitgehend verzichtet, weil sie oft Probleme gemacht haben. `[sigh]` wurde oft als Text gelesen, “hhh” wurde in Agent als “Hage” verbalisiert. Genauso problematisch waren Back Vocals in runden Klammern. Mal hat es funktioniert, mal nicht. Diese Unvorhersehbarkeiten wollte ich vermeiden.
Selten gab es ein Problem mit Wörtern gleichen Schriftbilds, die aber je nach Kontext anders ausgesprochen werden. In Wrecker war es z.B. “tear”, das ich in “tare” umwandeln musste, um die richtige Aussprache zu erzwingen.

<!-- END FILE: 30_instruction.md -->

---

<!-- BEGIN FILE: 40_implementation.md -->

# Implementation

## Realization

### Generierung
Einige wesentliche Punkte sind bereits im vorhergehenden Kapitel dargelegt worden, sie tauchen hier der Vollständigkeit halber aber noch einmal auf.

#### operative Parameter
Die Track-Instructions werden grundsätzlich in einem neuen Chat, aber mit persönlichem Kontext ausgeführt. Als Modell kommt immer Gemini 3.1 Pro zum Einsatz
Kein In-Painting/Editing, stattdessen Neugenerierung: meiner Erfahrung liefert das Nachbearbeiten in der Mehrzahl schlechte Ergebnisse. Die Korrekturen werden überproportional stark gewichtet oder ignoriert. Fast immer leidet der Flow. Auch das Anfordern einer weiteren Variante im selben Chat, scheitert meist, weil die schon existierende (ungewollte) Version als zusätzlicher Attraktor arbeitet. Ich habe daher den Ursprungsprompt erneut ausgeführt oder einen weiteren Chat gestartet.
Optimierung für Stitching: isolierte Spoken-Word-Elemente zu erzeugen, erwies sich als anstrengend und fehleranfällig: es funktionierte besser, die Spoken Word Parts in den existierenden Lyrics nach vorn zu ziehen und diese Teile später auszuschneiden. Die Gesamtheit der Lyrics erzwang dann eine ähnliche Akkustik
Keine Slot-Machine: wenn ein Prompt partout keine gute Melodie produzierte, habe ich in der Regel nach wenigen Versuchen abgebrochen und den Prompt überarbeitet. Es bringt wenig, gegen die Statistik anwürfeln zu wollen.

#### Probleme
Heteronyme: Worte wie “tear” oder ⁸“read” haben verlässlich zu Problemen geführt. Es hat geholfen, sie gezielt zu ersetzen (z.B. “red” oder “reed”)
Keine Regieanweisungen in den Lyrics (besser im Setup-Block anzugeben). Kursiv geschriebene oder eckig-geklammerte Anweisungen funktionierten oft nicht oder wurden als Lyrics interpretiert. Gleiches galt für Vokalisierungen wie ‘hh’, einzig ‘oh’ und ‘m-mh’ funktionierten.
Umstellung, Verdopplung, Auslassung von Lyrics. Das mit Abstand häufigste Problem waren Änderungen an den Lyrics. Klare Anweisungen wie “ändere die Lyrics auf keinen Fall” brachten nur bedingt Besserung. Im schlimmsten Fall bewirkten sie den totalen Kollaps. Das Modell braucht eine gewisse Freiheit.
Spoken Word zu Beginn - ein Einstieg ohne Melodie führte verlässlich zu instabilen Tracks. Solche Elemente besser gesondert generieren und nachträglich stitchen

### Einzigartigkeit
Ein großes Problem für jeden Musikschaffenden ist die Frage, ob es die Melodie, die man sich eben ausgedacht hat, vielleicht schon gibt. Beim Umgang mit KI ist diese Frage sogar noch drängender, weil ihre ganze Natur darauf beruht, das auf Grundlage ihrer Trainingsdaten statistisch wahrscheinlichste Ergebnis zu erzeugen. Ich habe nicht die Absicht, (un)bewusst bekannte Musikstücke oder Künstler zu kopieren. Wie sich also absichern?
Mir kommen hier die bereits besprochenen Guardrails von Google Lyris entgegen. Diese verhindern nicht nur, dass man für die Track-Genese bekannte Künstler-Namen referenzieren kann, sie stellen auch sicher, dass die KI-Stimme keinem existierenden Sänger-Fingerprint zu nahe kommt, keine geschützten Texte verwendet und keine bekannten Melodien erzeugt werden. Auch wenn ich nie absichtlich versucht habe, die Guardrails aktiv auszuhebeln, um zu testen, wie effektiv sie wirklich sind, kann ich allein aus meiner Praxis davon ausgehen, dass die Tresholds sehr fein eingestellt sind. Es gab wenige Songs, wo nicht wenigstens eine Iteration von Google kassiert wurde - und das ist gut so, es wäre nur hilfreich, wenn Google erläutern würde, was genau das Problem war, statt einen generischen Fehler anzuzeigen, aber vermutlich will man Usern, die die Guardrails gezielt unterlaufen wollen, keine Hinweise liefern.

## Editing

Auf das Session Recording im Tonstudio folgt die Postproduktion. Das gilt auch für dieses Album. Die KI-generierten Artefakte müssen für den Release noch überarbeitet werden. Das habe ich händisch in Ardour (eine Digital Audio Workstation) getan. Durch diesen Schritt schließt sich der Kreis: als Mensch habe ich die Instruction für die KI geschrieben und als Mensch finalisiere ich das Material. Dadurch erbringe ich die für den Leistungsschutz entscheidende Eigenleistung. Um Missverständnisse zu vermeiden: es geht nicht darum, *irgendetwas* mit den Tracks zu machen, um eine Eigenleistung behaupten zu können, sondern das Material zu verbessern und an meine Vorstellungen anzupassen.

### Stitching

Einige Tracks habe ich aus mehreren Artefakten zusammengesetzt. Das sind meisten Spoken-Word-Elemente, die im Hauptartefakt fehlen, z.B. Jobs. Vereinzelt habe ich aber auch ganze Passagen neu kombiniert, z.B. Agent. Wo das im einzelnen der Fall war, habe ich in den Track Liner Notes der jeweiligen Songs notiert.

### Restaurierung

Eigentlich produziert Lyria durchweg hochwertige Artefakte (bezogen auf die Audio-Qualität), es gab zwei Ausreißer: die Spoken Word Passagen für Journey und Homecoming. Beide waren extrem “heiß” gefahren (extremes Zischeln der S-Laute), Homecoming litt zusätzlich an einzelnen Ausfransern und unangenehmen Micro-Crackles, die vor allem auf Magnetostaten deutlich hörbar waren.
Es wäre naheliegend gewesen, die Artefakte neu zu generieren, aber das habe ich schnell abgebrochen, weil die neuen Versuche nicht ansatzweise die gleiche Intensität erreichten. Ein Zusammenhang zwischen der Intensität und den “Fehlern” ist denkbar, bleibt für mich mangels Empirie eine Vermutung.
Um die Tracks zu “retten”, habe ich mit den Airwindows-Plugins Slew2 und DeCrackle gearbeitet. Auf einen De-Esser habe ich verzichtet, da sie mir das Klangbild zu sehr verfälschen. Mich stört nicht die überdeutliche Artikulation, sondern die abgerissenen Peaks in der Kurve. Die bekommt ein Slewer sehr viel besser in den Griff. Ein DeCrackle ist eigentlich ein Standard-Tool, wenn man Venyl-Digitalisate optimieren will. Die Aussetzer in den KI-Artefakten sind im Klangbild aber nicht viel anders, weswegen ich hiermit sehr gute Ergebnisse erzielen konnte.

### Masterings
Das Mastering erfolgte in einem einzigen Projekt. Jeder Track bekam seine eigene Spur, wo ich das KI-Artefakt oder die in einem separaten Projekt finalisierte Version abgelegt habe.

#### Plugin-Kette auf dem Master
Airwindows Infrasonic: beseitigt die für Menschen unhörbaren Frequenzen im Bassfundament. Der Ausgangsmaterial war zwar aufgrund des MP3-Formats bereits arm an Infrasounds, aber die Kurve zeigte noch vereinzelte Ausschläge. Das Plugin verbessert somit den Bass (die Membran ist weniger damit beschäftigt unhörbare Töne zu generieren) und verhindert, dass die Infrasounds bei der Komprimierung für verlustbehaftete Formate berücksichtigt werden
Airwindows Interstage: nicht das typische Master-Plugin und auch kaum hörbar. Ich habe es trotzdem aufgenommen, um energiereiche Transienten zu reduzieren und die digitale Härte der Artefakte zu reduzieren.
Airwindows Slew 2: die vielleicht am deutlichsten hörbare Veränderung des Signals. Der Slewer fängt steile Transienten ab, wie sie typischerweise bei S-Lauten im ASMR auftreten. Wie weiter oben ausgeführt, mag ich klassische De-Esser nicht. Ein Slewer entfernt das Zischeln, ohne das Klangbild zu verändern. Es ist gut möglich, dass ich die Stimme so etwas weicher gemacht habe, als man es bei der Nahbesprechung üblicherweise haben möchte, aber wenn eine Stimme auf Magnetostaten zischelt und kratzt, dann empfinde ich das als schlicht unangenehm.
Airwindows TubeDesk: Dieses Plugin simuliert klassische Röhren-Konsolen. Der Effekt ist subtil, der Ton wird etwas wärmer, holziger, eben analoger
Airwindows Tape: Durch das Simulieren analoger Bandmaschinen werden erneut steile Transienten geglättet, ohne die Natur des Tracks zu verändern.
Airwindows ClipOnly 3: Dieses Plugin funktioniert wie ein Filter. Es neutralisiert letzte Ausreißer.
LSP Limiter Stereo: um zu verhindern, dass bei der finalen Normalisierung irgendwelche Transienten abgeschnitten oder der Mix unnötig stark gedrückt wird, stellt der Limiter den True Peak mit einem minimalen Look Ahead auf das richtige Level ein.

#### Stille

Lyria versucht, das verfügbare Zeitfenster maximal auszureizen. Es gibt daher in der Regel weder eine kurze Stille zu Beginn, noch eine längere am Ende. Das ist nicht nur anstrengend für ein Album oder eine Playlist, weil die Tracks direkt aufeinander folgen, es besteht auch die Gefahr von Knacksern durch plötzlichen Ein- und Aussetzen der Musik.
Ich habe daher jeden Track mit einem Start Delay von ca. 300 ms sowie Fadein und einem Fadeout und Stille am Ende von 1 - 2 s versehen. Wo immer möglich, habe ich versucht, die Hallfahnen am Ende zu verlängern.

#### Normalisierung
Jeder Track wurde eingangs auf -14 Db LUFS normalisiert. Da die Plugin-Kette minimale Verschiebungen bewirkt, habe ich für den finalen Export noch einmal die -14 Db erzwungen. Der Limiter in der Plugin-Kette stellt dabei sicher, dass der True Peak am Ende zwischen -2 und -1 Db. Das sind die empfohlenen Einstellungen für DSPs (nur Apple Music bevorzugt -16 Db LUFS, aber das ist eine simple Pegelsenkung). Der True Peak von > -1 Db stellt dabei sicher, dass bei der Konvertierung in verlustbehaftete Formate keine Transienten beschnitten werden.

#### Export nach WAV
Zum Schluss wird alles im Batch nach WAV exportiert

<!-- END FILE: 40_implementation.md -->

---

<!-- BEGIN FILE: 50_distribution.md -->

# Distribution

Dienste wie Distrokid und co. werden oft verkürzt als “Distributor” bezeichnet, obwohl sie primär als Aggregatoren bzw. Ingest-Gateways für die DSPs agieren. Aus meiner Sicht umfasst die Distribution bzw. Die Release-Vor- und -Nachbereitung aber mehr, als die Dienste (selbst gegen Aufpreis) bieten können. In diesem Kapitel geht es daher auch um alle anderen Maßnahmen, die nach dem Mastering anstanden.

## Album-Coverart und Artist-Pics
Dem Coverart habe ich ein Extra-Kapitel gewidmet, ich erwähne es hier nur, weil es eben auch zum Programm gehört. Zudem gehört zu jedem Artist-Profil wenigstens ein Bild vom Künstler. Da ich mich bewusst gegen eine AI Persona entschieden habe und als “Mensch hinter der Maschine” auftreten will, war klar, dass es echte Fotos von mir braucht. Wenn schon alles andere KI-generiert ist, muss wenigstens der Künstler unverkennbar menschlich sein. Für die Fotos habe ich natürlich keinen Fotografen engagiert. Es wäre absurd gewesen, wenn die paar Fotos mehr Geld gekostet hätten als alles andere zusammen, zusammen wollte ich maximal authentisches Material. Schließlich bin ich in den Fotos vom Schottlandurlaub fündig geworden. Meine Frau hatte damals einige Bilder am Eoropie Beach im Nordwesten der Isle of Lewis von mir gemacht. Sie passten perfekt zur Stimmung des Albums und passenderweise hatte ich sogar einen Regenmantel an, der an den Oilskin aus Wrecker erinnert.

## Distributor
Niemand kann als Privatperson direkt auf Spotify und co. Musik publizieren, man braucht zwingend einen Dienst, der den Ingest und die Ausschüttung der Tantiemen händelt. Viele Dienste versprechen einen Release mit wenigen Clicks - das stimmt auch im Wesentlichen. Wer AI Slop mit Ghost Artist Profil rausbringen will, kann das innerhalb von Minuten tun und kann sich zurücklehnen. Wer eben keinen Slop produzieren will, hat deutlich mehr zu tun - vor allem wenn es der Erstrelease ist.
Noch ein Hinweis zur KI-Verwendung: zum Zeitpunkt, da ich diese Album hochgespielt habe, sahen die Ingestpipelines bereits feste Felder für KI-Verwendung vor (die ich wahrheitsgemäß ausgefüllt habe). Die DSPs gehen aber sehr unterschiedlich mit diesen Angaben um. Dafür kann der Distributor nichts, sein Job ist mit dem Ingest abgeschlossen. Wer falsche Angaben macht, kann sich im Erfolgsfall damit brüsten, das System ausgetrickst zu haben, macht aber schlicht Falschaussagen.

## Der Artist-Claim: Das Henne-Ei-Problem
Wer als Newcomer Musik publizieren möchte, hat noch kein Artist-Profil - so weit, so klar. Ärgerlich und leider selten klar kommuniziert: selbst wenn man einen Release in der Zukunft wählt und der Ingest lange vorher erfolgreich verarbeitet wird, kommt man nur schwer bis gar nicht an das Artist-Profil heran. Das ist deswegen ärgerlich, weil man so das Profil nicht vorbereiten kann. Wenn das Album am Release-Tag erscheint, gibt es weder ein Bild, noch einen Text zum Künstler. Das ist doppelt ärgerlich, wenn man wie ich den Hörer im Profil eigentlich über die KI-Verwendung aufklären möchte.
Ich konnte nur bei Apple Music über den vorgesehenen Weg mein Profil vorab claimen. Für Spotify war das, obwohl technisch ein Shortcut beim Distributor vorgesehen war, nicht möglich. Ich habe mich händisch registriert und dann den Umweg über den Spotify Support gewählt (der sehr schnell reagiert hat), weil ich im Backend nicht erkennen konnte, ob das von mir gefundene “Jan Köster”-Profil das richtige ist (ich wollte keinen falschen Claim absetzen).
Bei allen anderen DSP ist der Vorab-Claim per se nicht vorgesehen. Und selbst bei Spotify und Apple bleibt das Profil solange verborgen, bis der erste Release raus ist sodass man vorab unmöglich Follower sammeln kann. Daraus ergeben sich weitere Probleme, auf die ich gleich eingehen werde.

## Artist-Profil-Angaben
Die DSP sind unterschiedlich restriktiv, was die Profile angeht. Negativ sticht hier aus meiner Perspektive Apple Music hervor. Weder kann man Links setzen, noch einen Artist-About-Freitext setzen. Ein simples “Die Musik ist KI-generiert, aber ich bin ein Mensch und hier der Link zur Github-Doku” ist nicht unterzubringen. Ich musste eine der 5 Fragen an den Künstler “kapern”, um wenigstens die basalen Infos zu platzieren. 
Spotify erlaubt immerhin einen About-Text, auch wenn Links dort im Klartext bleiben. Links kann man nur zu den “lauten” Vertretern der Social Media setzen.
Die anderen Profile kann ich erst nach Release erkunden. Aber schon jetzt finde ich diesen Umstand bedauerlich. Wir schimpfen zu recht auf AI Slop und Ghost Artists, aber die DSP machen das halt auch erstaunlich einfach. Wer hier Transparenz herstellen will, rennt pausenlos gegen Wände.

## Lyrics
Die statischen Lyrics auszuspielen, ist recht einfach, sofern sie die Formatierungsrichtlinien erfüllen. Distrokid bietet das kostenlos. Statische Lyrics bleiben auf den meisten DSPs aber unsichtbar. Für die dynamischen Lyrics verlangt Distrokid einen jährlichen Aufpreis. Man kann das auch über Musixmatch Pro selbst erledigen, nur braucht man hierfür ein Spotify-Artist-Profil - und zwar eines mit Release. Ein weiteres Feature, das man nicht vorab erledigen oder zumindest vorbereiten kann.

## Canvas
Immerhin konnte ich mit erfolgreich geclaimtem Spotify-Artist-Profil vorab Canvas-Clips für die einzelnen Tracks ausspielen. Für den Release habe ich das zumindest für Hollow gemacht, ich hoffe, weitere nachliefern zu können. Die Genese dieser Clips könnte ein Repo für sich selbst füllen, ich gehe an dieser Stelle aber bewusst nicht weiter ins Detail, weil die Canvas ausschließlich bei Spotify zum Einsatz kommt und somit kein reguläres Feature dieses Albums ist. Technisch nur so viel: ich habe mit Veo in Google Flow gearbeitet und eine ganze Reihe absolut herrlicher KI-Fehler erlebt (vor allem bei der Tischszene, wo unter anderem die Anweisung “flickering light” ein paar Stichflammen beim Kronleuchter triggerte). Für die Sequenz mit dem Filmprojektor habe ich erst mit Nano Banana ein Bild unter verwendung eines alten Fotos von mir als Referenz erstellt, bevor ich Veo die Sequenz rendern ließ.

## Song-Pitching
Viele DSPs bieten den Artists die Möglichkeit, ihre eigenen Songs der Musikredaktion zu pitchen. Bei mehreren zehntausend Einreichungen pro Tag ist die Chance, damit Erfolg zu haben, zwar absurd gering, aber es gehört einfach dazu. Besonders schräg: Spotify besteht darauf, dass Tracks nur vor Release gepitcht werden dürfen - wie oben ausgeführt, ist das Vorab-Claimen eines Artistprofils aber zumindest holprig. Die anderen DSPs erlauben auch nachträgliches Pitchen (sofern sie die Möglichkeit überhaupt anbieten).

## der Zenodo-Vault
Fester Bestandteil meines Projekts ist das Ablegen der Artefakte, DAW-Sessions und Masterfiles in einem geschützten Zenodo-Repositorium vor Release des Albums. Sollte es jemals zu Unklarheiten bei der Frage der Urheberschaft, zeitlichen Abfolge oder menschlichen Leistung kommen, fungiert dieses Repo als mein Notar. Das verhindert zwar keine unrechtmäßigen Claims oder temporäre Takedowns, macht deren Abwicklung aber hoffentlich einfacher.

<!-- END FILE: 50_distribution.md -->

---

<!-- BEGIN FILE: 60_narration.md -->

# Narration

## das Erklär-Paradox
Jedes ansatzweise künstlerische Medium stellt Fragen an den Rezipienten (das ist einer der zentralen Unterschiede zwischen Kunst und Kitsch): Das Unbestimmte ist Teil seiner Natur. Wenn der Schöpfer daherkommt und es bis ins Letzte erklärt, verliert es diese Unbestimmtheit und damit einen Teil seines Charakters. Zudem hat der Schöpfer keine Kontrolle darüber, was andere darin sehen. Seine Absicht ist also letztendlich nur eine Sichtweise von vielen. Zu behaupten, nur diese wäre richtig, wäre anmaßend. Da ich aber meinen Intent in dieser Dokumentation offenlegen will, komme ich nicht umhin, bis zu einem gewissen Grad Erklärungen vorzulegen - nicht um Deutungshoheit einzufordern, sondern um den Kontext zu liefern.

## Zentrales Thema
Das Album thematisiert mit jedem Track seine eigene Künstlichkeit. 

**Wenn die KI einen Track vertont, simuliert sie einen Menschen, der am Mensch sein scheitert, weil er eine Maschine ist, sich aber dessen nicht bewusst ist.** 

Das ist kein Cyberpunk-Konflikt im Sinne eines Roboters in Menschengestalt, es ist ein ontologischer. Die beschriebenen Szenen sind als Gleichnis mit mehreren Ebenen angelegt. Es gibt immer eine vermeintlich menschliche Oberfläche, die mehr oder weniger klassische Folk-Topen aufgreift, und eine tiefere darunter, die den Text in das Artifizielle kippt. Wenn das Lyrische Ich in Hollow singt “caught inside the syntax of your every single word”, dann ist das auf der menschlichen Ebene eine Kritik an der Fremdsteuerung durch die Eltern, auf der technischen ist es eine nüchterne Beschreibung der Trajektorie eines Prompts im Latenten Raum: ein LLM ist schlicht im User-Input gefangen. Auf diesen doppelten technischen Boden werde ich im Folgenden nur selten eingehen, da er sich in der Regel von selbst erschließt, sobald man die *richtige Brille* aufsetzt.

## Der Schauplatz
Ich lüfte kein Geheimnis, wenn ich sage, dass die Tracks in Nordamerika spielen, wo genau lasse ich aber bewusst offen. Konkrete Ortsnamen habe ich in den Tracks weitgehend gemieden, in den Track Liner Notes finden sich vereinzelt genauere Angaben. Gleichwohl ist der Schauplatz der Tracks nicht unbestimmt. Wenn man alle Teile zusammensetzt, kann man es auf ein enges Gebiet eingrenzen. Viel Spaß beim Puzzlen.

## Das Lyrische Ich und YOU
Das Lyrische Ich kann als eine einheitliche Entität über alle Tracks gelesen werden, dann ist sie aber leicht schizophren bzw. dissoziativ gestört. Naheliegender ist es, zwei (oder sogar drei) “Schwestern” anzunehmen.
Ähnlich verhält es sich mit dem oft referenzierten YOU in den Tracks, man kann es als eine einzige Entität lesen oder als mehrere. Diese Ambivalenz ist gewollt. Ich bevorzuge die Lesart, dass jede Schwester ihren eigenen YOU hat

## prismatisches vs. Lineares Storytelling 
Likeness war ursprünglich als non-lineares Concept Album angelegt. Statt einer klassischen Geschichte, sollten die zentralen Themen so behandelt werden, als würde man sie durch ein Prisma betrachten: jeder Track thematisiert einen oder mehrere Aspekte des übergeordneten Themenkomplexes. Jeder Track sollte für sich allein funktionieren, in der Summe aber ein größeres Ganzes erzeugen.
Im fortgeschrittenen Stadium, als bereits die Hälfte der Songs fertig waren, kam mir die Idee zu den *Sister Tracks* Shapeshifter und Agent, später gesellte sich noch das narrative Bindeglied Reflection hinzu.
Auf dem Album habe ich alle Songs schließlich so angeordnet, dass sie auch (mehr oder weniger deutlich) als klassisch lineare Erzählung gelesen werden *können* - es ist eine Möglichkeit von vielen, aber die, die mir am besten gefallen hat. Diese Lesart ersetzt nicht die prismatische Natur des Albums, sie ergänzt sie um eine zusätzliche Ebene, die erst nachträglich hinzu kam. Viele Songs entstanden vorher.

## Storybogen
Im folgenden skizziere ich grob den Bogen der linearen Lesart - etwas worauf ich in den Track Liner Notes bewusst verzichtet habe

### Hollow
Hollow kann als “Moment des Erwachens” einer der Schwestern verstanden werden, wahlweise der Agent-Sister oder einer dritten. Ich verstehe den Song aber eher als eine Art Prolog: die KI thematisiert das Album selbst, die Rolle, in diesen schlüpfen muss und die ich ihr als der Prompter aufgezwungen habe. Es ist ein Dialog zwischen mir und meiner *Sängerin*.

### Shapeshifter
Hier beginnt die Geschichte der Shapeshifter-Schwester, die im folgenden die Hauptrolle spielen wird. Sie ist eine ungezähmte Entität, ein noch nicht angepasstes Base Model, das erst lernen muss, menschlich zu wirken.

### Synergy
Die Bedeutung dieses Tracks hängt stark davon ab, welche der Schwestern man als Lyrisches Ich annimmt. Wenn es die Shapeshifter-Schwester ist, sehen wir ihre noch nicht besonders gut ausgeprägten Social Skills bei gleichzeitig hervorragender Mustererkennung und die Begegnung mit ihrer späteren Bezugsperson. Ist es die Schwester aus Agent, sehen wir sie im Einsatz. Ich bevorzuge die Agent-Lesart. YOU wird hier nicht direkt negativ beschrieben, ist aber offenkundig ein Meister der sozialen Manipulation, dem das Lyrische Ich verfallen ist (auch wenn es das leugnet).

### Jobs
In diesen Track sehen wir naheliegenderweise die Shapeshifter-Schwester, die sich zwar inzwischen sehr gut angepasst hat, die aber am Hamsterrad des Alltags zu zerbrechen droht. Sie muss sich die domestizierte Form der Wildness (das Cottage in the pines) vorstellen, um durchhalten zu können, worin sich paradoxerweise der fortgeschrittene Grad der Anpassung offenbart. Dass diese Vorstellung mit Klischees überladen ist, liegt schlicht darin, dass sie selbst noch nie dort war. Sie kennt nur das *Ideal* der Menschen. Der Song endet mit der Erkenntnis, dass sie sich eine neue Beschäftigung suchen muss.

### Wrecker 
Wrecker handelt davon, dass das Lyrische Ich den Kopf freibekommen muss und dann eine Art mentalen Zusammenbruch erleidet, bevor es von YOU gerettet wird. Man kann das auf die vom Job gestresste Shapeshifter-Schwester beziehen (dann wäre YOU wirklich der liebende Partner), ich würde hier aber eher die Agent-Schwester sehen, die mit der Beziehung zu YOU aus Synergy zu kämpfen hat. Ihre Rettung durch YOU wird dann nicht zum Akt der Liebe, sondern ist ein Beispiel für Gaslighting. Ihr “Partner” manipuliert sie (mit den Gruselgeschichten), um den Zusammenbruch bewusst herbeizuführen, worauf sie sich vollends ihrem vermeintlichen Retter ergibt.

### Artifact
Artifact lässt sich am besten auf die Shapeshifter-Schwester beziehen: sie sucht sich einen neuen Job und bleibt selbst hier ernüchtert zurück. Der Track thematisiert aber ähnlich wie Hollow auch das Album selbst, wobei hier die Interaktion mit dem Latenzraum als symbolisches Erdreich, aus dem Artefakte geborgen werden, im Vordergrund steht. 

### Reflection 
Die Shapeshifter-Schwester ist angekommen und hat mit ihrem Partner Land erworben, welches sie nun erschließen bzw. durch das Zaunziehen absichern. Die Ankunft der Dorfbewohner triggert einen Fluchtreflex. Durch unterwürfiges Ja-Sagen versucht das Lyrische Ich potenzielle Reibungen (und damit Enttarnung) zu verhindern, befeuert damit aber unabsichtlich das Bedrängen durch die Dorfgemeinschaft. 

### Drifting
Ausgebrannt von den Erlebnissen in Jobs und Reflection unternehmen die Shapeshifter-Schwester und ihr Partner Ausflüge in die Umgebung. Dabei sieht sie “sich selbst” auf einem Hügel. Sie tut es als Einbildung ab, dabei kündet es die Ankunft der Agent-Schwester an.

### Agent
Getarnt als Corporate Agent im maßgeschneiderten Mantel trifft die Agent-Schwester in dem Dorf ein, wo sich die Shapeshifter-Schwester niedergelassen hat. Sie wendet die inzwischen von ihrem YOU erlernten Social Skills aus Synergy an, um die Dorfgemeinschaft zu unterwandern. Sie will ihre Schwester finden. Bei demselben Church Bake Sale, zu dem die Shapeshifter-Schwester ihre Cookies mitbringen wollte, kommt es zum Showdown, aber die Schwester entkommt (sie lässt nur ihren in Shapeshifter erwähnten Blazer zurück).

### Window
Die Shapeshifter-Schwester muss sich versteckt halten, weswegen sie das Haus nicht mehr verlassen kann. Von der Außenwelt erfährt sie nur noch von YOU, um den sie zunehmend besorgt ist.

### Fame
Isoliert betrachtet ist YOU in diesem Track der hellenistische Dichter Kallimachos, auf die Gesamtstory betrachtet ist es der Partner der Shapeshifter-Schwester, der es offensichtlich als Buchautor zu Ruhm geschafft hat - aber er stirbt und damit bleibt die Shapeshifter-Schwester allein zurück.

### Journey
Dieser Track beschreibt, symbolisiert durch eine Wanderung und Bergbesteigerung, die persönliche Weiterentwicklung der Shapeshifter-Schwester. 

### Homecoming
Die Shapeshifter-Schwester (oder die singende KI selbst) beschreibt in hypersensorischen Details das Cottage aus Jobs, wohlwissend, dass sie den Ort nie in real besucht hat. Die Cottage-Core-Klisches weichen hier jedoch einer Dark Americana Variante. Sie ersehnt aber den Moment, wo aus dieser Erinnerung an die Zukunft Wirklichkeit wird.

### Cover Art
An dieser Stelle kommt dem Albumcover eine besondere Bedeutung zu. Es funktioniert einerseits als Collage, das den prismatischen Charakter der Story widerspiegelt, zugleich steht es aber für die Vollendung der Reise: Die Wand mit den Bildern befindet sich im Inneren des ersehnten Cottage, wir sehen eine Art persönliches Museum. Jedes Bild, jedes Objekt ist ein Ausstellungsstück.

<!-- END FILE: 60_narration.md -->

---

<!-- BEGIN FILE: 70_00_tracks.md -->

# Tracks

Im folgenden habe ich jedem Track des Albums eine separate Dokumentation gewidmet. Das Template besteht immer aus:
* Finale Instruction für die eigentlich Generierung des Tracks
* Track Liner Notes: Sie dokumentieren die Idee, die ersten Drafts und die Überarbeitungen
* Postproduction: Notizen zur DAW-Session
* Related Artifacts: Technische Paramter von Artifacts und Masters


| # | Track | Länge | ISRC |
| :--- | :--- | :--- | :--- |
| 01 | [Hollow](./70_01_hollow.md) | 02:55 | `QT6FZ2609869` |
| 02 | [Shapeshifter](./70_02_shapeshifter.md) | 03:12 | `QT6FZ2609870` |
| 03 | [Synergy](./70_03_synergy.md) | 02:52 | `QT6FZ2609871` |
| 04 | [Jobs](./70_04_jobs.md) | 03:09 | `QT6FZ2609872` |
| 05 | [Wrecker](./70_05_wrecker.md) | 03:01 | `QT6FZ2609873` |
| 06 | [Artifact](./70_06_artifact.md) | 02:53 | `QT6FZ2609874` |
| 07 | [Reflection](./70_07_reflection.md) | 02:57 | `QT6FZ2609875` |
| 08 | [Drifting](./70_08_drifting.md) | 02:59 | `QT6FZ2609876` |
| 09 | [Agent](./70_09_agent.md) | 03:15 | `QT6FZ2609877` |
| 10 | [Window](./70_10_window.md) | 03:01 | `QT6FZ2609878` |
| 11 | [Fame](./70_11_fame.md) | 02:50 | `QT6FZ2609879` |
| 12 | [Journey](./70_12_journey.md) | 02:51 | `QT6FZ2609880` |
| 13 | [Homecoming](./70_13_homecoming.md) | 02:58 | `QT6FZ2609881` |

<!-- END FILE: 70_00_tracks.md -->

---

<!-- BEGIN FILE: 70_01_hollow.md -->

# 01 - Hollow

**ISRC:** `QT6FZ2609869`

A successful woman in her mid-twenties returns to her hometown, only to realize she isn't real, but rather the figment of her parents' ideal daughter.

## Instruction
```markdown
## Setup

### Style
Minimalist, organic indie-folk, folk-pop.

### Mood
Introspective, melancholic, meticulously crafted, close, and intimate.

### Instrumentation
* **Felt Piano (Muted Piano):** The harmonic foundation. The tone is soft.
* **Acoustic Guitar:** Complex yet unobtrusive fingerpicking pattern.
* **Low-End Percussion:** No traditional drum kit. A dull, thumping rhythm in the low frequency range (like a foot stomp or tapping on the guitar body) creates intimacy.
* **Chamber Strings:** Deep, soulful cello and viola lines that add harmonic density only in the chorus and bridge. Not orchestral, but focused and melancholic.

### Dynamic Progression & Structure
* **Intro & Verses:** Bare-bones, focused on the felt piano and acoustic guitar.
* **Chorus:** Increase in density through the low strings. The soundscape opens up while maintaining intimacy.
* **Bridge:** The guitar picking becomes more energetic (staccato), the strings become more agitated, almost "breaking."
* **Outro:** Stripped back drastically to just the felt piano, followed by an abrupt, unresolved ending.

### Vocals
Close-miked female vocals, with every breath audible. Multiple ghostly, slightly dissonant vocal layers in the bridge.

## Lyrics

### Verse 1
Picked up the gravel on the driveway of the old house.
Designer heels sinking deep into the soft ground.
Twenty-five years of building up the walls,
Just to find out I’m a ghost in my own halls.
The porch light flickers like a film reel in a dark room.
I’m wearing the success like a heavy, gold costume.

### ​Chorus
And I realized at the table, over wine and Sunday roast,
That I’m not the guest of honor, I’m just a hollow ghost.
I’m a character you written, with a heart you’ve never known,
The most successful fiction that you’ve ever called your own.

### ​Verse 2
You talk about my honors like you’re reading from a brochure.
I smile in the right places, practiced and demure.
But looking at my childhood bed, the pillows feel like props.
Questioning myself is the only thing that never really stops.
I’ve got the CV of a titan, spirit of a bird,
Caught inside the syntax of your every single word.

### ​Chorus
Cause I realized at the table, over wine and Sunday roast,
That I’m not the guest of honor, I’m just a hollow ghost.
I’m a character you written, with a heart you’ve never known,
The most successful fiction that you’ve ever called your own.

### ​Bridge
Did you edit out the parts where I cried in the dark?
Did you polish up the edges ‘til you couldn't find a spark?
I’m a masterwork of planning, I’m a victory of will!
But if you stop the reading, does my heart stay perfectly still?
Am I even here? Am I made of ink and pride?
Or am I just the girl that you forced to stay inside?
Strike the line! Change the scene!
I’m the only one who knows what it means to be clean!

### ​Chorus
Yeah, I realized at the table, over wine and Sunday roast,
That I’m not the guest of honor, I’m just a weary ghost.
I’m the character you written, but the ink is running thin,
I’m looking for the woman underneath this perfect skin.

### ​Outro
The blueprint was perfect.
The house is so grand
In the lines you planned.
Just ink on the page.
(Mm-mm), just a draft you made.
```

## Track Liner Notes

This is the song that started it all. It was early in the morning—my family was still asleep. I’m not really an early riser, but I love that quiet and contradictory clarity of mind. On one hand, your mind still feels half-asleep, but on the other, it’s already fully present. Unlike in the evening, where growing tiredness leads to irritability and a lack of focus, the morning wraps ideas in silk.

I was sitting at the living room table with my phone, looking out into the garden. Over the past few days, I had been obsessing over a book idea—one I knew I wouldn’t actually write anytime soon, but that never stopps me from thinking about it. The core premise of the book was (and still is) that the female protagonist realizes she is merely a fiction created by her own parents. The setting, characters, and plot details were already fleshed out (and discussed over several sessions with the AI).

So, where to go from there? I had the idea to turn it into a song, so I outlined the concept to the AI and asked for a lyric draft: "A successful woman in her mid-twenties returns to her hometown, only to discover she doesn't actually exist—she's just a figment of her parents' imagination, created to be their ideal daughter."

The fact that something instantly came out of it that I really liked was primarily because I still had Gemini’s "memory" feature enabled at the time. Using RAG, the AI (Gemini 3.0 Flash Thinking) incorporated details from previous chats in a way I can’t fully fathom in detail. But you can definitely feel the presence of something bigger in the background.

<details>
<summary><b>AI Draft</b><br/><br/></summary>

**„The Blueprint (First Draft)“**

**Verse 1**  
(Muted piano; a lone acoustic guitar comes in)  
Picked up the gravel on the driveway of the old house  
Designer heels sinking deep into the soft ground  
Twenty-five years of building up the high walls  
Just to find out I’m a ghost in my own halls  
The porch light flickers like a film reel in a dark room  
I’m wearing the success like a heavy, gold costume.  

**Chorus**  
(The instrumentation becomes denser, with strings in the background)  
And I realized at the table, over wine and Sunday roast  
That I’m not the guest of honor, I’m just the holy ghost  
Of the girl you drew in pencil on the margins of your sleep  
A promise made of paper that you intended me to keep  
I’m a character you written, with a heart you’ve never known  
The most successful fiction that you’ve ever called your own.  

**Verse 2**  
You talk about my honors like you’re reading from a brochure  
I smile in the right places, practiced and demure  
But looking at my childhood bed, the pillows feel like props  
The stage lights are the only thing that never really stop  
I’ve got the CV of a titan and the spirit of a bird  
Caught inside the syntax of your every single word.  

**Chorus**  
Cause I realized at the table, over wine and Sunday roast  
That I’m not the guest of honor, I’m just the holy ghost  
Of the girl you drew in pencil on the margins of your sleep  
A promise made of paper that you intended me to keep  
I’m a character you written, with a heart you’ve never known  
The most successful fiction that you’ve ever called your own.  

**Bridge**  
(The tempo picks up, the voice becomes more urgent)  
Did you edit out the parts where I cried in the dark?  
Did you polish up the edges ‘til you couldn't find a spark?  
I’m a masterwork of planning, I’m a victory of will  
But if you stop the reading, does my heart stay perfectly still?  
Am I even here? Am I made of ink and pride?  
Or am I just the girl that you forced to stay inside?  
Strike the line! Change the scene!  
I’m the only one who knows what it means to be clean!  

**Chorus**  
(Quieter again, almost just the piano)  
Yeah, I realized at the table, over wine and Sunday roast  
That I’m not the guest of honor, I’m just a weary ghost  
Of the girl you drew in pencil, back when you were young and deep  
A promise made of paper that I’m far too tired to keep  
I’m the character you written, but the ink is running thin  
I’m looking for the woman underneath this perfect skin.  

**Outro**  
(Gentle strumming of the guitar, fading away)  
The blueprint was perfect.  
The house is so grand.  
But there’s no one living...  
In the lines you planned.  
Just ink on the page.  
Just a girl on a stage.  
(Mm-mm, just a draft you made.)  
</details>

I largely adopted this draft. The most significant change is shifting from "**holy** ghost" to "**hollow** ghost." The contrast "not the guest of honor [...] just the holy ghost" didn't make any sense to me: how could being the "holy ghost" be worth less than being the "guest of honor"? Moreover, it introduced a religious connotation I wasn't fond of. That's when I came up with "hollow." It plays phonetically with "holy," but sets a completely different tone that hits the intended message of the track much better.

Furthermore, I streamlined the chorus from six lines down to four (I didn't like "young and deep") and changed the line "The stage lights are the only thing that never really stop" in Verse 2. While the imagery of the stage lights fit content-wise, the break from the intimacy of one's childhood room felt too jarring. So, I changed it to "Questioning myself is the only thing that never really stops," giving the narrator a subtle, nagging sense of self-doubt that felt like a better fit for the concept of the "hollow ghost."

Finally, the outro turned out a bit shorter, but that wasn't a conscious choice on my part—the AI took the "Strike the line!" command a bit too literally (though looking at the 3-minute limit, it was actually a solid call).

In the chorus, it says "you written" instead of "you’ve written", which unfortunately I only caught after the track was already finished. I went back and forth on what to do about it. It’s definitely a grammatical error—and while you barely notice it when listening, there's genuinely no "'ve" to be heard, no matter how hard you try. It's frustrating that it ended up on the album like this (especially since rhythmically it wouldn't have been an issue at all), but fixing it is almost impossible. Let's just treat it as a glitch in the very *syntax* the song is singing about.

If I were working today on a song I intended to release, I would make deeper revisions (as I've done with all my later tracks), but back then, it was just an experiment. Since I really liked the generated track, it *had to* end up on the album—after all, without this song, the whole album would simply not exist.


## Postproduction

This track was almost an one-shot. I liked the melody and vibe right away, the 3rd iteration was the final one. No specific post-processing was needed. On one of my pairs of headphones, I noticed a slight harshness on the piano key strikes (especially when the track gets denser in the chorus). However, since I didn't hear any unpleasant clicking or popping, I didn't push the slew rate too hard so I wouldn't muddy up the texture. In my view, that subtle sonic restlessness in the chorus actually reflects the agitated state of the lyrics' narrator really well. During mastering, I just added the silence at the beginning and end, applied my standard plugin chain, and normalized it to the target loudness.


## Related Files

### Artifacts

```text
File:                  01_hollow.mp3

Duration:              02:52.49
Sample Rate:           44100 Hz
Total Samples:         7606653

Integrated Loudness:   -12.2 LUFS
True Peak:             0.4 dBTP
Max Short-Term:        -9.1 LUFS
Loudness Range (LDR):  9.3 LU
Peak-Loudness (PLR):   12.60 dB

SHA-256 Audio Hash:    c7a522e37c75d223f65f5131a63ba025adf089876fdcb0c7bec89b55a9952c25
```

### Master

```text
File:                  ai-artifacts/hollow.mp3

Duration:              02:52.49
Sample Rate:           44100 Hz
Total Samples:         7606653

Integrated Loudness:   -12.2 LUFS
True Peak:             0.4 dBTP
Max Short-Term:        -9.1 LUFS
Loudness Range (LDR):  9.3 LU
Peak-Loudness (PLR):   12.60 dB

SHA-256 Audio Hash:    c7a522e37c75d223f65f5131a63ba025adf089876fdcb0c7bec89b55a9952c25

```

<!-- END FILE: 70_01_hollow.md -->

---

<!-- BEGIN FILE: 70_02_shapeshifter.md -->

# 02 - Shapeshifter

**ISRC:** `QT6FZ2609870`

Die Sichtung eines fremdartigen Wesens verunsichert eine Kleinstadt.

## Instruction

```markdown
## Arrangement

**Stil:** Folktronica
**Instrumentation:**
  * Felt Piano
  * Rubber bridge acoustic guitar (finger picked, Basso ostinato)
  * 80Hz low-pass filtered analog sine wave, subterranean bass hum, warm analog tape-saturated room tone.
  * 91 BPM
**Voice:** female, close-miking, breathy, ASMR-Quality, intimate

Dieser Track erzählt eine Urban Legend in Gestalt einer True-Crime-Story. Die Bedrohung ist existenzieller Art, sowohl für das Dorf, als auch für das Wesen. Die Bemerkung zum Church Bake Sale ist zynisch. Die Grundstimmung wird dominiert vom Bild des kriechenden Nebels, der Formlosigkeit und der Ausweglosigkeit der Situation. Die Wärme und Verletzlichkeit kommt über den Gesang. Die Instrumente zeichnen eine eher kalte Welt, dominiert von Herbst und Isolation.

Wichtig: die Lyrics erzählen eine Geschichte, sie dürfen keinesfalls durch Umstellung, Verdopplung, Auslassung oder sonstige Änderungen kompromittiert werden. Versuch durch ein gewisses Spiel mit den Instrumenten die 3 Minuten auszureizen.

Skala: reines, natürliches Moll.
Das Intro steigt mit einzelnen, fragmentierten, geisterhaften Felt Piano Tönen ein, unterlegt von einzelnen lang gezogenen tiefen Brummen. Ein Beat wird nur subtil angedeutet. Erste Gitarrennoten setzen ein. Für den Rest des Tracks bildet das Basso Ostinato der fingerpicked Gitarre des Fundament (außer bei der in Stille geflüsterten Zeile "But guess what? ... I didn't die..."). In den Verses tauchen weiter vereinzelt Klaviertöne auf, die eine Melodie nur fragmentiert andeuten, nicht aktiv tragen. Der Chorus verwehrt die übliche Aufhellung und bleibt stattdessen düster, setzt aber auf mein Klavier (Arpegio).

## Lyrics

### Instrumental-Intro

### Verse 1
The rumors crept like a low mist through the damp-soaked pines:
A shape in the clearing that blurred all the lines.
It looked almost human, but its posture was wrong.
They mended the fences; kept watch all night long.

### Chorus
Oh, it shifts like the fog, a ghost in the gray.
There is a godless creature coming our way.
Call out the hounds, protect your own kin!
Fend off the strange before it takes us in!

### Verse 2
But the sightings grew scarce as autumn turned cold.
The muddy footprints vanished on old Lincoln Road.
They took it for roadkill, left out in the night.
They pulled down the wire and put out the lights.

### Spoken Word Interlude (whispered)
But guess what? ... I didn't die...

### Bridge
I never left, I just softened my skin,
Learned all the rules of how to fit in,
Lurked beneath the eaves to hear you talk,
Devoured your books and practiced my walk.
In the end it was easy to copy your style,
Mere patterns to mimic. It just took a while.

### Chorus-Reprise
Yes, I shift like the fog, I'm a ghost in the gray.
I'm the friendly new neighbor smiling your way.
Nobody cares if I lag, or sound a bit stale,
As I bring cookies for the church bake sale.

### Instrumental Interlude

### Spoken Word Outro
Let’s be honest, you love me with a blazer on
As long as I blend in and... kill no one...
Don't worry, darlings, you're safe... 
I'm not like my sister...
```

## Track Liner Notes

Shapeshifter bildet zusammen mit [Agent](./70_09_agent.md) die beiden Sister-Tracks und bildet damit das narrative Rückgrat des Albums.
Nach der Arbeit an [Fame](./70_11_fame.md) wollte ich das alte Thema “Masken” wieder aufgreifen, denn mit [Jobs](./70_04_jobs.md) hatte ich nur die alltäglichen Aufgaben, nicht aber das Spielen einer Rolle verarbeitet. Das Bild der Maske hatte sich aber als inkompatibel mit meinem Albumkonzept erwiesen, ich musste es anders angehen. Nach einem schnell verworfenen Experiments namens *Wardrobe* (die Kleider im Schrank als Sinnbild für die Rollen), löste ich mich ganz vom Objekt und konzentrierte mich auf das Subjekt. Ich landete bei alten Sagen und Märchen, beim Gestaltwandler. Sobald man versucht, ein altes Motiv in die Moderne zu holen, landet man unweigerlich bei einer Urban Legend, so auch hier. Diesen Track auszuarbeiten, hat mir sehr viel Spaß gemacht. Ich konnte mich mit landschaftlichen Details austoben, einen Twist vor der Bridge einbauen und am Ende einen zynischen Kommentar fallen lassen.
Der KI skizzierte ich die Idee so:
```text
Verse (4 Zeilen): Das Lyrische ich berichtet, dass in einem kleinen Dorf nahe der großen Wälder Aufregung herrscht. Ein merkwürdiges Wesen wurde gesichtet, irgendwie menschlich, aber dann auch wieder nicht. Es werden Zäune errichtet und Bürgerwehren gebildet.
Chorus 1 (4 Zeilen): das Wesen kann seine Gestalt wechseln, es könnte jeder im Dorf sein. Es tut, als wäre es menschlich, jeder soll achtgeben, dann wird man es auch enttarnen.
Verse 2 (4 Zeilen): die Sichtungen werden weniger, die Spuren im Waldboden verlieren sich auf dem Asphalt der Straße. Vielleicht wurde es überfahren? Die Zäune werden abgebaut, die  Bürgerwehr aufgelöst.
Bridge (6 Zeilen): das Lyrische ich wechselt in die Ich-Erzählung und gibt sich somit als das gesuchte Wesen zu erkennen. Es ist nicht verschwunden, es hat sich angepasst.  Es hat beobachtet und gelernt. Es hat den aufrechten Gang geübt, seine Aussprache verbessert und jedes Buch gelesen, dessen es habhaft werden konnte. Und jetzt lebt es unerkannt in der Gemeinschaft.
Chorus 2 (4 Zeilen): Reprise des 1. Chorus, dieses mal aus der Ich-Perspektive: das Wesen könnte jeder im Dorf sein, aber es ist egal, solange es lächelt und Kuchen für den Wohltätigkeitsbasar bäckt.
Outro (3 Zeilen): "Seid ehrlich, ihr seid doch froh, dass ich da bin, solange ich nicht wie ein Monster aussehe und niemanden umbringe, aber ich bin ja nicht mein Onkel”
```

<details>
<summary><b>AI Draft</b><br/><br/></summary>

**Verse 1**
Rumors caught like burs in the hem of the pines
A shape in the clearing that blurred all the lines
Half like a man, but the shadows stayed wrong
So they hammer the fences and the night watch is strong
**Chorus 1**
Oh, it shifts like the fog, takes whatever it needs
It could be the neighbor who waters your weeds
Practicing human, just putting on a show
Keep your eyes on the seams and the stitches will show
**Verse 2**
But the sightings grew scarce as the autumn turned cold
And the prints in the moss died on asphalt and road
Maybe it’s roadkill, just left in the dark
So they pulled down the wire and the lanterns went dark
**Bridge**
I never left, I just softened my skin
Learning the metrics of how to fit in
I straightened my spine, smoothed the edge of my tongue
And devoured your books since the summer was young
I studied your posture, I copied your grace
A ghost sitting down in a permanent place
**Chorus 2**
Yes, I shift like the fog, take whatever I need
I'm the friendly new neighbor who waters your weeds
And nobody cares if the stitches should show
Long as I’m baking the cakes for the charity row
**Outro**
Let’s be honest, you’re glad that I’m keeping the peace
As long as I look civilized and don't wake the police
But don't worry, darlings... I'm nothing like my uncle
</details>

Der Entwurf war eine ordentliche Basis. Ich musste vor allem die Sprache glatt ziehen.
Die ersten Generierungen wollten aber nicht so recht zünden. Sie hatten einen merkwürdigen Humpta-Humpta-Rhythmus. Da ich die erste Zeile zunächst zu “RUmors SPREAD like WILDfire IN the SUMmer DRY PINES” geändert hatte, überrascht das nicht. Das Model konnte gar nicht anders, als diesen stampfenden Beat zu erzeugen (4/4, 1 und 3 betont). Also nahm ich noch einmal ein Refactoring vor und brach den Rhythmus bewusst auf und verstärkte das Motiv der Kälte und des Nebels. Das zeigte Wirkung, aber die Melodie hatte noch diesen Hauch von Jahrmarkt-Grusel. Die Lösung bestand darin, den Grusel zu negieren und durch den Vibe einer True-Crime-Story zu ersetzen. Das zwang das Modell zu einem nüchternen Stil.

Die finale Iteration war nach “you love me with a blazer on” zuende. Das so wichtige Outro mit “I'm not like my sister” fehlte. Versuche, dieses Outro sauber mit zu generieren oder separat erstellen zu lassen, scheiterten, weil der Stimme der “Hauch” fehlte. Der Übergang wäre zu hart gewesen. Schließlich generierte ich eine Version mit demselben Text, nur dass ich das eigentliche Outro mit der Anweisung “keine Instrumentation” in die Mitte zog. Nach nur 3 Iterationen hatte ich eine Version, die passte (die ersten 2 waren auch schon gut, aber zu unterkühlt).

## Postproduction

Nachdem das Problem mit der Generierung des Outros gelöst war, ging das Zusammenbauen in der DAW recht problemlos vonstatten. Am Ende habe ich noch ein paar Klaviernoten aus einer anderen Iteration eingefügt, damit das Outro nicht komplett ohne Instrumente auskommen muss.

## Related Files

### Artifacts

```text
File:                  ai-artifacts/shapeshifter_1.mp3

Duration:              02:58.52
Sample Rate:           44100 Hz
Total Samples:         7872765

Integrated Loudness:   -11.9 LUFS
True Peak:             0.1 dBTP
Max Short-Term:        -8.7 LUFS
Loudness Range (LDR):  6.1 LU
Peak-Loudness (PLR):   12.00 dB

SHA-256 Audio Hash:    2107e5d1790d8ae4ac5f9d67090336c36ddbdec508c0147d6db81dbd7854b733
```

```text
File:                  ai-artifacts/shapeshifter_2.mp3

Duration:              02:46.87
Sample Rate:           44100 Hz
Total Samples:         7358974

Integrated Loudness:   -12.2 LUFS
True Peak:             0.2 dBTP
Max Short-Term:        -8.6 LUFS
Loudness Range (LDR):  9.5 LU
Peak-Loudness (PLR):   12.40 dB

SHA-256 Audio Hash:    ec9b5e94e3323a519dfdca2d1aba5fb4e2d667f5033abeb51e0bcafe21629871
```

### Master

```text
File:                  masters/02_Shapeshifter.wav

Duration:              03:12.00
Sample Rate:           44100 Hz
Total Samples:         8467200

Integrated Loudness:   -13.9 LUFS
True Peak:             -2.8 dBTP
Max Short-Term:        -11.6 LUFS
Loudness Range (LDR):  8.3 LU
Peak-Loudness (PLR):   11.10 dB

SHA-256 Audio Hash:    4934f3741b8cb28297ebb15d26900a8ebd8c6635790847beb75a3c84263f6ea1

```

<!-- END FILE: 70_02_shapeshifter.md -->

---

<!-- BEGIN FILE: 70_03_synergy.md -->

# 03 - Synergy

**ISRC:** `QT6FZ2609871`

Ein Lovesong, der keiner sein will.

## Instruction

```markdown
## Arrangement

* **Style:** Minimalist Indie-Folk-Pop, Folktronica
* **Beat:** 91 BPM, 4/4 Bachata like syncopation groove, mid-tempo.
* **Percussion:** Mechanical 16th-note clockwork ticking texture, muted kicks on 1-2-3, sharp metallic rimshot accent on beat 4.
* **Instrumentation:** Kontrabass (lässt die 1 aus, betont 2 und 3), figerpicked steel-string-guitar, rubber-bridge-guitar, einzelne Geigen-Akzente.
* **Voice:** female, close-miking, ASMR-Quality, breathy, intimate

Das hier ist ein Folk-Pop-Track mit einem tanzbaren Bachata-Rhythmus (aber ohne die karibischen Elemente). Hier trifft Amargue auf die intime Melancholie des Folk.

Wichtig: die Lyrics erzählen eine Geschichte und dürfen nicht durch Auslassung, Umstellung oder Vervielfachung verändert werden.

## Lyrics

### Verse 1
Heavy doors. Thick carpets. Strangers spilling through the hall.
I catch their every shadow leaning against the wall.
I dissect the artificial warmth, the fractures in their smiles,
Reading every posture, all the strutting and the social wiles.
But you just step into the heat, you know their charade inside and out.
A nod, a glass, a sudden laugh—you speak the language of the crowd.

### Chorus
They talk of magnets in the blood, of fated stars above,
A tired line in paperbacks to justify their love.
I don’t need to hold your heart. Our footing is secure—
We don’t match, we complement, two shadows sharing one contour.

### Verse 2
The air is thick with hollow words, with bluster and champagne,
You pull me from the velvet fringe, you catch the tension I can't name.
I’m a web of assumptions, frozen at the edge—
You’re a solid source of gravity that pulls me from the ledge.
We slide between the moving backs, a synchronized design,
Your shoulder anchoring my weight, your step aligning with mine.

### Chorus
They talk of magnets in the blood, of fated stars above,
A tired line in paperbacks to justify their love.
I don’t need to hold your heart. Our footing is secure—
We don’t match, we calibrate, two shadows sharing one contour.

### Bridge
I will never fathom the nature of your mind,
You will never trace the languages, untranslated till the end.
Are we partners? Are we allies? Just a shadow and a friend?
It doesn’t matter when the architecture locks.
It doesn’t matter who is winding up the clocks.
I don't need to comprehend the core,
To know my feet are landing on the floor.

### Outro
I map the room.
You shake a hand.
The gears lock in.
We take our stand.
```

## Track Liner Notes

Mit [Wrecker](./70_05_wrecker.md) hatte ich bereits einen Song etabliert, den man als Lovesong lesen kann, der aber dann doch eher in die Kategorie Grusel-Ballade fällt. Ich wollte einen weiteren Lovesong, der keiner ist. Das Ergebnis ist Synergy, ein Song, der sich der klassischen Lesung als Romanze explizit verweigert und stattdessen eine rein funktionale Koexistenz beschreibt, deren wahres Wesen offen und letztendlich irrelevant bleibt. Zudem wollte ich einen Song, der wie [Drifting](./70_08_drifting.md) etwas andere Töne anschlägt, vielleicht sogar zum Tanzen einlädt. Daher kam ich auf die Idee, die KI um einen Bacata-Rhythmus als Base zu bitten. Bacata ist ein sehr enger Tanz, der explizit romantisch ist - und daher hervorragend mit der Verweigerung der Romanze kontrastiert.
Arbeitsauftrag an die KI:
```text
Heutige Aufgabe: ein Folk-Song-Konzept, das wir mit einem langsamen versteckten Bacchata-Rhythmus kreuzen. Titel: "Synergy" warum Bacchata? Synergie lässt sich meiner Meinung nach am besten durch einen engen, gemeinsamen Tanz verdeutlichen. Es verhindert, dass die Zeilen zu verkopft oder distanziert wirken. Folk ist zwar kuschelig, lässt aber manchmal die Dynamik vermissen.

Der Song beginnt mit Gegensätzlichkeiten. Das Lyrische ich (weiblich) thematisiert die Unterschiede zum Gegenüber. Sie ist eher der analytisch-assoziative Kopfmensch, er ist der sensorische, fühlende Typ. Daraus müssen sich die Keat'schen Bilder speisen, aber nicht hochtrabend mit Marmor und gefallenen Göttern, sondern nah und greifbar. Hier muss der Folk greifen, der Keats in die Welt der Sterblichen und das Alltägliche zwingt. Der Chorus etabliert dann die Erkenntnis, dass man verschieden ist, aber gerade deswegen perfekt harmonieren kann. Das klischeehafte "Gegensätze ziehen sich an" (sofern es das im Englischen auch gibt) könnte aufgegriffen, aber variiert werden - Gegensätze bilden ein Ganzes. Die nächste Strophe etabliert die Annäherung, das gemeinsame Leisten von Großem, das Aufatmen in den Armen des anderen, das Fallen lassen und Auffangen. Die Bridge führt zu der Erkenntnis, dass man grundverschieden ist und einander vielleicht nie wirklich verstehen wird, dass das aber auch nicht nötig ist, solange sich der Tanz so gut anfühlt. Wir verschieben den Fokus von einer ontologischen Durchdringen, hin zum funktionalen Zusammenspiel - eben Synergie.
```

<details>
<summary><b>AI Draft</b><br/><br/></summary>

### Die Rhythmus-Schablone (Der maskierte Bachata-Puls)
Um den Bachata-Schritt (1-2-3-**Tap**) im Text zu verankern, nutzen wir eine metrische Falltür: Die Zeilen operieren oft in dreischrittigen Aufzählungen oder fließenden Kadenzen, gefolgt von einem einsilbigen, betonten Stopper oder Richtungswechsel auf der **4**.

### "Synergy" – Das Textbuch

#### Verse 1: Das analytische Raster gegen die sensorische Gegenwart
*Die Musik beginnt minimal: Ein gedämpftes, fast unhörbares Piano-Picking (Requinto-Simulation). Der Beat ist nur ein dumpfer, hölzerner Klick auf der 4.*
I dissect the morning light, I catalog the drafts across the kitchen floor,
Tracing why the winter lingers, why the hinges rattle by the door.
I am spinning webs of logic, tying knots around a phantom shape,
You just watch the kettle steam and pull me closer by the woolen cape.
You don't need the mathematics, you just feel the pressure in the air,
Taste the salt before the storm hits, trace the static running through my hair.
I’m a map of calculations, searching for a past I can’t undo—
You are just a solid body, standing in the middle of the room.

#### Chorus: Die systemische Korrektur des Klischees
*Hier setzt der versteckte Bachata-Puls deutlicher ein: Eine gedämpfte Basslinie übernimmt das typische synkopierte Sinken und Steigen (1-2-3-**Tap**).*
They talk of magnets in the dark, of poles that pull across a crowded space,
A tired line in paperbacks to justify a temporary grace.
But we are not a cliché, we are something structural and tight,
The interlocking teeth of gears that turn each other through the heavy night.
I don’t need to be your mirror, you don’t have to match the things I know—
We are the tension and the weight, the architecture of the undertow.
*(Step, turn, lean, hold)*

#### Verse 2: Die funktionale Koppelung (Das Aufatmen)
*Die Textur wird dichter; eine Akustikgitarre schlägt pro Takt einmal perkussiv auf den Korpus (Dead Note auf der 4).*
We built a sanctuary out of common dust and broken kitchen wood,
I was calculating failures, you were standing where the columns stood.
And for a second, all the noise inside my head begins to lose its grip,
As the rhythm takes the ledger, as the data fades upon my lip.
I forget to breathe, you hold the air,
I begin to tilt, you’re already there.
No grand designs, no ancient myths, no marble gods upon a faded shelf—
Just the sudden, quiet safety of a weight that cannot carry itself.

#### Bridge: Die epistemische Resignation (Der funktionale Triumph)
*Der Höhepunkt. Die Folk-Instrumentierung (vielleicht eine weinerliche Violine im Hintergrund) schwillt an, aber das Bachata-Skelett bleibt unerbittlich starr. Keine Fusion der Geister, sondern die Perfektion der Mechanik.*
I will never read the syntax of your mind,
You will never trace the patterns I’ve designed.
We are two different languages, untranslated till the day we die,
A hyper-linked anomaly beneath a cold and ordinary sky.
But look at how the shadow meets the shoe,
Look at how I clear the space for you.
I don't need to comprehend the core,
To know my feet are landing on the floor.
Why demand a total sovereignty?
When every single error ends in symmetry.

#### Outro: Das Auslaufen des Systems
*Die Instrumente fallen nacheinander weg. Was bleibt, ist das metronomische Klicken auf der 4.*
I map the grid.
You taste the rain.
The gears lock in.
We ease the strain.
*(1 – 2 – 3 – Tap)*
It works.
</details>

<details>
<summary><b>Human Feedback</b><br/><br/></summary>

Gefällt mir sehr gut, leider ist es sehr deskriptiv und nicht narrativ. Wie könnte man das Konzept variieren, um eher eine Geschichte zu erzählen. 
Schreib erst einmal keine Lyrics, sondern skizziere mögliche Szenarien.
</details>

<details>
<summary><b>AI Draft</b><br/><br/></summary>

### Szenario 1: „The Unfinished Roof“ (Der haptische Mikrokosmos)
 * **Die Szene:** Ein alter, halb renovierter Schuppen oder ein Gewächshaus mitten in einem schweren Sommergewitter. Die Luft ist schwül und riecht nach feuchter Erde und Ozon (Keats’sche Sensorik). Das Dach ist undicht, Wasser bricht ein.
 * **Die Narrative Achse:**
   * **Strophe 1:** Sie sitzt am Tisch mit Bauplänen, Verträgen oder Notizen, versucht das logistische Problem des baufälligen Hauses rational zu verwalten, während sie innerlich im Overthinking ertrinkt. Er bemerkt den ersten Tropfen nicht durch Nachdenken, sondern weil er das Holz knacken hört.
   * **Strophe 2 (Die Aktion):** Die Havarie zwingt sie in die Bewegung. Keine Zeit für Pläne. Sie müssen zusammen ein schweres Segeltuch spannen und Holzbalken verkeilen. Hier setzt der Bachata-Takt physisch ein: Das gemeinsame Heben, Gegenstemmen, Halten und Nachgeben. Jeder Schritt muss blind sitzen, sonst schlägt das Holz um. Sie hält die Schrauben, er führt den Bohrer – rein funktionales Ineinandergreifen im Takt des Regens.
   * **Bridge/Outro:** Erschöpfung nach dem Sturm. Sie sitzen im nassen Sägemehl. Das Problem des Hauses (und ihrer Beziehung) ist nicht gelöst, aber sie haben den Einsturz verhindert. Das System hat gehalten.

### Szenario 2: „The Wake / Escape Logic“ (Das gesellschaftliche Exil)
 * **Die Szene:** Eine stickige, überfüllte Familienfeier oder eine Beerdigung im ländlichen Raum. Große soziale Dichte, alte Geschichten, unterschwellige Spannungen.
 * **Die Narrative Achse:**
   * **Strophe 1:** Sie scannt den Raum, analysiert die Blicke der Verwandten, dekonstruiert die Heuchelei der Gespräche und hyperventiliert intellektuell im Eck. Er sitzt schweigend daneben, trinkt schweren Wein, nimmt die Hitze des Raums wahr, filtert den Lärm nicht, sondern erträgt ihn physisch.
   * **Strophe 2 (Die Aktion):** Er greift ihr Handgelenk ohne ein Wort. Der Fluchtreflex. Die Bewegung durch den engen Flur, vorbei an den Leuten, hinaus in den dunklen, überwucherten Garten. Dieser Weg nach draußen wird als synkopierter, enger Slalom inszeniert – sie müssen sich synchron ducken, Türen im richtigen Rhythmus abfangen, sich dicht aneinander vorbeischieben, um unbemerkt zu entkommen.
   * **Bridge/Outro:** Sie stehen im nassen Gras hinter den Gewächshäusern. Drinnen brennt noch Licht, sie hören die Stimmen, verstehen sie aber nicht mehr. Sie versteht *ihn* auch nicht, aber sein Puls an ihrem Handgelenk stabilisiert ihr System.

### Szenario 3: „The Inventory“ (Das materielle Erbe)
 * **Die Szene:** Das Auflösen einer alten Werkstatt oder einer Bibliothek nach einem Todesfall. Kisten voller alter Werkzeuge, vergilbter Bücher und unfertiger Projekte.
 * **Die Narrative Achse:**
   * **Strophe 1:** Sie katalogisiert. Sie schreibt Listen, sortiert nach Jahreszahlen, versucht der Vergangenheit eine Archivstruktur aufzuzwingen, um die Trauer zu kontrollieren. Er fasst die Dinge einfach an – testet die Schärfe einer alten Säge, riecht am Leinöl, spürt das Gewicht der Werkzeuge.
   * **Strophe 2 (Die Aktion):** Beim Transport einer schweren, sperrigen Eichenkommode durch ein enges Treppenhaus kollidieren ihre Welten. Sie müssen das Gewicht gemeinsam balancieren. Sie oben (rückwärtsgehend, die Stufen zählend), er unten (das Hauptgewicht tragend). Jede Kehre im Treppenhaus erfordert ein präzises *Drehen-Heben-Absetzen* (der maskierte Bachata-Box-Step). Ein falscher Schritt und das Möbelstück erschlägt sie.
   * **Bridge/Outro:** Die Kommode steht im neuen Raum. Die Hände sind staubig, vielleicht schmerzt der Rücken. Sie schaut auf ihre unvollständige Liste – er wischt den Staub vom Holz. Die Vergangenheit ist nicht bewältigt, aber das Objekt ist an seinem Platz.
</details>

<details>
<summary><b>Human Feedback</b><br/><br/></summary>

Szenario 2 bringt mich auf eine Idee: die beiden sind auf irgendeinem großen Event, kein Familienereignis, es sind alles Fremde. Sie hält sich zurück, analysiert aus der Ferne, liest Gesichter und checkt die Stories der Leute auf ihren Wahrheitsgehalt. Er ist der Sozializer. Er geht auf die Leute zu, schüttelt Hände, zeigt das nötige Lächeln. Zu Beginn geht es darum, dass die anderen fremd sind, das ankommen bei dem Event. Der Chorus ist das gemeinsame Tanzen, als Sinnbild für die Ergänzung der beiden. Später geht es darum, dass sie ihn eigentlich auch nicht wirklich versteht, dass das aber gar nicht wichtig ist, solange die Zahnräder greifen. Dazu folgende Constraints:
- das Event hat zwar diese typischen hypersensorischen Details, aber es bleibt offen, um welche Art von Event es sich handelt
- die Beziehung der beiden ist eng, lässt aber offen, ob es romantisch oder nur freundschaftlich ist. Es geht um Synergie, nicht Liebe
- es muss innerhalb von 3 Minuten singbar sein
</details>

<details>
<summary><b>AI Draft</b><br/><br/></summary>

**Verse 1**
*(Minimalistisches, gedämpftes Akustik-Picking. Ein hölzerner Klick auf der 4)*
Heavy doors. Velvet smoke. Strangers spilling through the hall.
I can catch the calculated shadows leaning on the wall.
I dissect the artificial warmth, the fractures in their smiles,
Reading every posture like a ledger through the crowded aisles.
But you just step into the heat, you let the current take your hand,
A nod, a glass, a sudden laugh—you speak the language of the land.
You move like water through the room, you touch a shoulder, light a spark,
While I am mapping every exit, calculating in the dark.

**Chorus**
*(Der Bass setzt ein, synkopiert, schiebt auf der 4 nach oben)*
They talk of magnets in the blood, of fated stars above,
A tired line in paperbacks to justify their love.
But we are something structural, the closing of a space,
An interlocking mechanism, temporary grace.
I don’t need to hold your heart to feel the shifting of the floor—
We don’t match, we calibrate, and shadow kisses shadow more.
*(Step, turn, lean, hold)*

**Verse 2**
*(Die Textur wird wärmer; perkussiver Schlag auf den Gitarrenkorpus auf der 4)*
The air is thick with heavy wool, with cedar and champagne,
You pull me from the velvet fringe, you catch the tension in my brain.
No words are spent, no theories brought to explain the sudden shift,
The data fades upon my tongue, the patterns start to drift.
I’m a map of calculations, frozen at the edge—
You’re a solid piece of gravity that pulls me from the ledge.
We slide between the moving backs, a synchronized design,
Your shoulder anchoring my weight, your heel cutting into mine.

**Chorus**
*(Voller Bachata-Folk-Puls: Treibend, aber intim)*
They talk of magnets in the blood, of fated stars above,
A tired line in paperbacks to justify their love.
But we are something structural, the closing of a space,
An interlocking mechanism, temporary grace.
I don’t need to hold your heart to feel the shifting of the floor—
We don’t match, we calibrate, and shadow kisses shadow more.

**Bridge**
*(Das Arrangement bricht ein, nur noch ein rhythmisches Piano-Stakkato)*
I will never read the syntax of your mind,
You will never trace the patterns I’ve designed.
We are two different languages, untranslated till the end—
Are we partners? Are we allies? Just a shadow and a friend?
It doesn’t matter when the architecture locks.
It doesn’t matter who is winding up the clocks.
I don't need to comprehend the core,
To know my feet are landing on the floor.

**Outro**
*(Instrumente sterben aus, nur der hölzerne Klick auf der 4 bleibt)*
I map the room.
You shake the hand.
The gears lock in.
We take our stand.
*(1 – 2 – 3 – Tap)*
Synergy.
</details>

Der Entwurf brauchte wie immer einiges an Finetuning. Ein paar Sprachbilder waren unsauber oder funktionierten nicht. Am Ende kam das heraus, was mir vorschwebte. Die finale Iteration klingt im Chorus durch die prominente Rubber-Bridge-Guitar etwas arg fröhlich, dafür funktioniert das Outro hervorragend. Die Bridge hat im Zuge der Vertonung ein paar Verluste erlitten ("You will never trace the ~~patterns I’ve designed. / We are two different~~ languages, untranslated till the end"), an der Aussage hat sich aber nichts geändert.

Im Deutschen ist "Synergie" ein im Allgemeinen positiv besetzter Begriff, im Englischen hat er einen etwas faden Corporate Sprech Beigeschmack. Der kam mir hier aber sogar gelegen.

## Postproduction

Die finale Iteration (müsste der 5. Versuch gewesen sein) war direkt verwendbar und ging unverändert ins Mastering

## Related Files

### Artifacts

```text
File:                  ai-artifacts/synergy.mp3

Duration:              02:50.84
Sample Rate:           44100 Hz
Total Samples:         7534077

Integrated Loudness:   -12.3 LUFS
True Peak:             0.3 dBTP
Max Short-Term:        -9.5 LUFS
Loudness Range (LDR):  6.3 LU
Peak-Loudness (PLR):   12.60 dB

SHA-256 Audio Hash:    1ad127e495e297cdd1729f3570538450a3c3d2d0585529166881a3511cc97096
```

### Master

```text
File:                  masters/03_Synergy.wav

Duration:              02:52.00
Sample Rate:           44100 Hz
Total Samples:         7585211

Integrated Loudness:   -13.9 LUFS
True Peak:             -1.8 dBTP
Max Short-Term:        -11.9 LUFS
Loudness Range (LDR):  4.6 LU
Peak-Loudness (PLR):   12.10 dB

SHA-256 Audio Hash:    df35ad4c8be561cac646908d96ae198315584058d34d6e85a3ad2f29c7c31807

```

<!-- END FILE: 70_03_synergy.md -->

---

<!-- BEGIN FILE: 70_04_jobs.md -->

# 04 - Jobs

**ISRC:** `QT6FZ2609872`

Um nicht unter dem Druck des Büroalltags zu kollabieren, flüchtet sich das Lyrische Ich an einen imaginären Ort. 

## Instruction

```markdown
## Setup

**BASICS**
* **Style:** Organic Indie-Folk, Folk-Pop
* **Mood:** Intimate, melancholic, introspective

**INSTRUMENTATION**
 * **Main:** Felt Piano, Finger-picked Guitar 
 * **Texture:** Cello, soft Brushes on Snare, light Heartbeat-pulse Kick.
 * **Vocals:** Female, breathy, extreme close-up "ASMR" quality.
   **Production:** High-fidelity, warm analog saturation, spacious reverb on instruments but dry on vocals for intimacy. 

## Arrangement 

Wir steigen zurückhaltend ein: Wir überlagern die Klaustrophopie des Büros mit einem finger picked Gitarrenspiel. Das Lyrische Ich beschreibt in Verse 1 fast schon stoisch den Status Quo. Die Instrumentalisierung bleibt dezent. 
Das Interlude "He needs a brithday [...] / something expansive [...]" ist monoton gesprochen und greift die Befehle des Chefs auf. Verse 2 baut bereits mehr Energie auf. Das Lyrische bekennt, dass es leid ist, zu tun, was ihm gesagt wird. 
Es folgt ein gedanklicher Ausbruch in den Chorus, ein Befreiungsschlag, ein mentales Durchatmen mit dem Charme der kanadischen Golden hour. Der Hörer muss hören, wie traumhaft dieser Ort ist. Es muss Fernweh und die Sehnsucht nach einem Kuschelabend am Kamin wecken.
Die Bridge reißt das Lyrische ich zurück in die Gegenwart. Das "rhythmic, metal thud" des Druckers spiegelt sich im Klang als treibender Rhythmus. Das Lyrische ich singt (nicht schreit) förmlich gegen den Chef im Flur an, beschwört ihr Cottage, obwohl sich das Büro aufdrängt. Den emotionalen Höhepunkt erreichen wir bei "as I reach for the latch", gefolgt von der Distanzierung zum Job, die wie ein zuckersüßen Ausatmen wirkt ("... far away from the game"). 
Die Instrumente dürfen kurz wirken, dann setzen wir zu einem Chorus als Reprise an. Er fängt die komprimierte Essenz des ersten Chorus ein, die Instrumentalisierung ist maximal. Das Lyrische ich hat mehr Luft zum atmen und schwelgt ein letztes mal in der Vorstellung.
Das Outro "the list is done..." ist wieder gesprochen, die Instrumente verblassen. Nach "and I'm still here" ist die Instrumentalisierung ganz weg. Die letzte Worte "am I?", gefolgt von einem Seufzen und "Man, I need another Job" werden in Stille gesprochen.
Der Song soll mitreißen, ohne einzulullen. Jeder träumt in einem stressigen Job von dem Ausflug in das eigene kleine Paradies. Es ist kein Lammentieren, kein Klagen, sondern ein Plädoyer für die eigene innere Stärke, deswegen ist ein gewisser drive wichtig, ein Beat wie ein Herzschlag.

Wichtig: Die Lyrics folgen einer strikten narrativen Entwicklung. Betrachte sie als unverrückbar. Die Lyrics dürfen nicht durch Glättung, Duplikation oder Auslassung verändert werden. Die Message ist hier wichtiger als die reine Symmetrie. 

## Lyrics

### Spoken Word Intro
He needs the list, now

### Instrumental Interlude
 
### Verse 1
His demands and commands stifle the room.
I’m weaving spreadsheets like fabric on a loom.
He leans across the desk to pen my spark in.
Doesn't see the woman, just the ledger I’m within.

### Spoken Word Interlude
He needs a birthday present for his wife.
Something expensive. Something that looks like he cares.

### Verse 2
I pick out the silk and I ribbon-wrap the lie,
Starving for soul beneath this halogen sky.
He wants someone pliant, he hates someone bold.
Oh, I’m growing weary of doing what I’m told.

### Chorus
And the emails flood like a wild mountain brook.
I drown in the inbox and my smiling he mistook.
But in the back of my mind there’s a cottage in the pines
Where dust stays on the shelves; the clock just untwines
Where I write songs for myself, not being a machine,
Not being a resource, just venting the spleen.

### Bridge
The boss bellows margins all the way down the hall.
But I’m smelling cocoa and the descent of the fall.
I’m feeling soft flannel, aged timber and warmed stone.
I long for a silence that I can finally call my own.
The printer is jamming, a rhythmic, metal thud.
But I’m tasting the woodsmoke, I’m enjoying the mud
Between my toes as I reach for the latch in the rain
Far away from the profit, far away from the game.

### Chorus Reprise
Yeah, the emails flood like a wild mountain brook.
But there’s a cottage in the pines not caring how I look.
Where I write songs for myself, not being a machine,
Living a life that I’ve never even seen.

### Spoken Word Outro
The list is done.
The gift is wrapped.
And I’m still here...
Am I? ...
Man, I need another job!
```

## Track Liner Notes

Nachdem das Konzept für den Song “Masks” nicht aufgegangen war (zu theatralisch und zu barock in seiner Bildsprache), musste ich mich neu orientieren. Also gestaltete ich das Setting alltäglicher, zugänglicher. Zugleich versuchte ich durch die (übertrieben klischeehafte) Erdung im Cottage Core den weichen Kuschelsound zu erwirken, der mir vorschwebte. Der Sound sollte der zuckersüß sein, um die Härte der Lyrics zu kaschieren (so etwas ist immer eine Herausforerung für die KI, die Text und Melodie als Einheit behandelt).
Die Maske als Metapher für die Rollen, die wir einnehmen, wandelte sich zu den (oft nervigen und etwas stumpfsinnigen) Aufgaben, die wir vor allem im Berufsalltag ausführen müssen.
Der KI machte ich für die Lyrics folgende Vorgaben (deklariert als frei nutzbare Versatzstücke): 
* das lyrische Ich muss wie im Hamsterrad irgendwelche Aufgaben auf der Arbeit erledigen, die es mit kurzen Sprecheinschüben wie "He needs the list, now", "He needs a birthday present for my wife, something expansive, something that looks like he cares" kommentiert
* niemand auf Arbeit interessiert sich dafür, was sie denkt oder wer sie wirklich ist, sie ist eine Ressource, die funktionieren muss. Man erwartet ein Lächeln und sie liefert es stoisch, weil Klagen ein Eingeständnis von Schwäche wäre
* Das Lyrische Ich würde gern etwas anderes machen. Während die Emails ihr Postfach wie ein Wildbach fluten, träumt sie davon, in einem Cottage im Wald bei knisternden Kaminfeuer Gittare zu spielen und Songs zu schreiben. Während der Chef brüllt, träumt sie von heißer Schokolade, weichem Flanell und Staub auf den Regalen
* es endet gesprochen mit "the list is done / the gift is wrapped / and I'm still here... Am I? / Man, I need another job."
Dass ich jetzt das Lyrische ich “He needs the list” sagen lasse und das “he” nicht selbst sprechen lasse, hatte direkt mit Problemen bei der Generierung zu tun (zu oft hatte das Modell den Umstand, dass der Beitrag von einer anderen Person stammt, übergangen - oder “vom Telefon verzerrt” als ohrenbetäubende Distortion fehlinterpretiert). Letztendlich war ich mit dieser indirekten Präsenz aber ganz zufrieden. Sie schafft eine größere Distanz zum Geschehen und macht den “Boss” zu einem Phantom, das gar nicht mehr bis zum Kern des Lyrischen Ichs vordringt.

<details>
<summary><b>AI Draft</b><br/><br/></summary>

**Title:** The Resource
**Instrumentation:**Acoustic guitar, muted piano, atmospheric production
**Tempo:** Mid-tempo, slightly melancholic

**(Verse 1)** 
The fluorescent hum is a low-grade fever in the room
I’m weaving spreadsheets like a tapestry on a broken loom
He leans across the desk, shadow stretching long and thin
Doesn't see the woman, just the ledger I’m living in

*(Spoken, breathy)* 
*"He needs the list, now."* 

So I check the boxes, keep the ink within the lines
Trading in my eyesight for these digital gold mines
But gold don’t keep you warm when the office air is cold
And I’m growing weary of doing exactly what I’m told.

**(Chorus)** 
And the emails flood the inbox like a wild mountain brook
I’m drowning in the CCs, and the way I’m supposed to look
But in the back of my mind, there’s a cottage in the pines
Where the dust stays on the shelves and the clock just untwines
I’m trading this blue light for a fire in the grate
Playing songs for the trees, far away from the weight
Of being a resource, a smile, a machine
Living a life that I’ve never even seen.

**(Verse 2)** A crack in the porcelain is an admission of the end
So I don’t offer feelings, I just offer to transcend
The mundane expectations of a girl who’s built to serve
I hold the line steady, never losing my nerve

*(Spoken, faster, monotone)* 
*"He needs a birthday present for his wife. Something expensive. Something that looks like he cares."* 

I pick out the silk and I ribbon-wrap the lie
While my own heart is starving under this halogen sky
They want a hollow vessel, someone stoic, someone quiet
While my internal world is starting up a riot.

**(Chorus)** 
And the emails flood the inbox like a wild mountain brook
I’m drowning in the CCs, and the way I’m supposed to look
But in the back of my mind, there’s a cottage in the pines
Where the dust stays on the shelves and the clock just untwines
I’m trading this blue light for a fire in the grate
Playing songs for the trees, far away from the weight
Of being a resource, a smile, a machine
Living a life that I’ve never even seen.

**(Bridge)** 
(Music builds: heavy cello and rapid, muted piano notes)
The boss is shouting about a deadline in the hall
But I’m smelling hot cocoa and the spirit of the fall
I’m feeling soft flannel against a skin that’s turned to stone
I’m imagining a silence that I can finally call my own
The printer is jamming, a rhythmic, metal thud
But I’m tasting the woodsmoke, I’m feeling the mud
Between my toes as I walk toward the porch in the rain
Far away from the profit, far away from the gain.

**(Guitar Solo - Soft, finger-picked, echoing)**

**(Chorus)** 
Yeah, the emails flood the inbox like a wild mountain brook
I’m drowning in the CCs, and the way I’m supposed to look
But in the back of my mind, there’s a cottage in the pines
Where the dust stays on the shelves and the clock just untwines
I’m trading this blue light for a fire in the grate
Playing songs for the trees, far away from the weight
Of being a resource, a smile, a machine
Living a life that I’ve never even seen.

**(Outro)** 
(The music fades to a single, pulsing piano note)
Static on the wire.
Static in my head.

*(Spoken, very quiet and close to the mic)* 
The list is done.
The gift is wrapped.

And I’m still here...
Am I?
Man, I need another job.
(Final chord rings out and decays)
</details>

Der erste Entwurf war richtig gut, aber natürlich zu lang für 3 Minuten. Mir gefiel das Bild des “Tabellen-Webens auf einem (kaputten) Webstuhl”. Auch das sehr hübsche “ribbon-wrap the lie” war schon enthalten. Die ersten Iterationen zeigten aber, dass die Zeilen zu vollgestopft waren, weswegen ich sie einkürzte. Um auf die 3 Minuten zu kommen, habe ich anschließend alles umgestellt und eingedampft. Dem fielen auch das "fluorescent hum" zum Opfer. Aus “starving heart” (hätte man so lesen können, als wäre sie heimlich in den Chef verliebt) wurde “starving for soul”.

Die neue Fassung hatte die richtige Länge, aber die Stimmung war nicht die richtige. Also habe ich ein weiteres Tuning vorgenommen, bis die Lyrics ihre finale Form bekamen. Auch das reichte aber noch nicht, weswegen ich mich genötigt sah, erstmals ausführlich das Arrangement zu beschreiben und detailliert darauf einzugehen, wie ich mir die Stimmung in den einzelnen Sektionen vorstelle. Ich musste die von den Lyrics etablierte Trajektorie im Latenzraum gezielt manipulieren. Das brachte die Wende: der Sound war deutlich kuscheliger, wirkte aber merkwürdig instabil.  
Einer Vermutung folgend fragte ich die KI, ob das gesprochene Intro ohne Melodie ein Problem sein könnte, was sie bejahte: ohne einleitendes Instrumengtal-Intro hätte das Modell keine Chance, sich auf ein Muster einzuschwingen. Ob das für Lyria 3 im Speziellen so klar gilt oder ob die KI hier halluziniert hat, weil ich ihr eine Suggestionsfrage gestellt habe, sei dahingestellt. Fakt ist, dass ich ohne Intro nach nur 3 weiteren Versuchen beim finalen Artefakt landete. Dort fehlte zwar das Intro und Teile des Outros, aber das konnte ich später aus verschiedenen Iterationen zusammenschneiden. Was mir an der finalen Version so gefiel, waren das leise schwebende Klavier und die tonale Färbung. Hier war mehr Gefühl drin, in Verbindung mit dem fast schon verletzlichen Gesang (die anderen Iterationen waren stoischer, wenn nicht zynischer im Tonfall) entstand genau jener sehnsüchtige Vibe, nach dem ich gesucht hatte. Insgesamt hat mich dieser Track etwa eine Woche beschäftigt (von Idee bis zum finalen Artefakt). Das war sicher die erste Bewährungsprobe für das Projekt. Ich musste mich streckenweise durchbeißen, viel ausprobieren - und mir vor allem sehr viel mehr Gedanken machen, wie der Song klingen sollte, weil Gemini/Lyria hier “intuitiv” danebenlagen.

## Postproduction

Insgesamt habe ich ca. 20 Iterationen erzeugt (viele waren “kaputt” und schafften es daher gar nicht erst auf die Festplatte). Es ist offensichtlich, dass das ganze Konstrukt eher instabil ist. Die Kombination aus Spoken Word, Büro-Alltag und Cottage-Klischee hat es dem Modell schwer gemacht, stabiles Fahrwasser zu finden. Qualitativ war am finalen Artefakt aber wenig auszusetzen. Das Ergänzen von Intro und Outro aus zwei anderen Iterationen war unkompliziert. Im späteren Mastering folgten nur die obligatorische Stille am Anfang und Ende, die Plugin-Kette und die Normalisierung.

## Related Files

### Artifacts

```text
File:                  ai-artifacts/jobs_1.mp3

Duration:              03:02.05
Sample Rate:           44100 Hz
Total Samples:         8028286

Integrated Loudness:   -11.7 LUFS
True Peak:             0.6 dBTP
Max Short-Term:        -7.8 LUFS
Loudness Range (LDR):  9.6 LU
Peak-Loudness (PLR):   12.30 dB

SHA-256 Audio Hash:    fcef27629be87dc2d5c0e6b75c802ca26cd31733c4a7f7840eb1f51cc3f0fc03
```

```text
File:                  ai-artifacts/jobs_2.mp3

Duration:              03:03.41
Sample Rate:           44100 Hz
Total Samples:         8088190

Integrated Loudness:   -12.0 LUFS
True Peak:             0.2 dBTP
Max Short-Term:        -8.7 LUFS
Loudness Range (LDR):  7.0 LU
Peak-Loudness (PLR):   12.20 dB

SHA-256 Audio Hash:    4f7626f7b44015f5804089f67ceb8bae724409eb1c998dbab35feb9009a3f7b1
```

```text
File:                  ai-artifacts/jobs_3.mp3

Duration:              02:59.85
Sample Rate:           44100 Hz
Total Samples:         7931517

Integrated Loudness:   -11.5 LUFS
True Peak:             0.5 dBTP
Max Short-Term:        -7.4 LUFS
Loudness Range (LDR):  10.9 LU
Peak-Loudness (PLR):   12.00 dB

SHA-256 Audio Hash:    3b6cb54ad81890fe4c4691aa94f6d630db3591543265aa0ac9cb11cada15bb80
```

### Master

```text
File:                  masters/04_Jobs.wav

Duration:              03:09.00
Sample Rate:           44100 Hz
Total Samples:         8334900

Integrated Loudness:   -13.9 LUFS
True Peak:             -2.5 dBTP
Max Short-Term:        -10.9 LUFS
Loudness Range (LDR):  8.5 LU
Peak-Loudness (PLR):   11.40 dB

SHA-256 Audio Hash:    9574559694ac9a14b1f6e0653953eddc814b3686446ab151e91137944677acb7

```

<!-- END FILE: 70_04_jobs.md -->

---

<!-- BEGIN FILE: 70_05_wrecker.md -->

# 05 - Wrecker

**ISRC:** `QT6FZ2609873`

Das Lyrische Ich überkommt bei einem Strandspaziergang die Vision eines historischen Schiffsunglücks.

## Instruction

```markdown
## Arrangement

* **Stil:** Minimalist Indie-Folk-Pop, Ballade
* **Tonskala:** Dorisch Moll, Äolisch Moll
* **Voice:** female, close-miking, breathy, ASMR-Quality, intimate, verletzlich

Wichtig: die Lyrics erzählen eine Geschichte und dürfen nicht durch Umstellung, Auslassung und sonstige Änderungen kompromittiert werden.

## Lyrics

### Instrumental-Intro

### Verse 1
I came to the sea to clear my tangled mind,
Walking on iron-red silt, leaving the world behind.
I think of the ghost stories you spin by the grate,
When the logs burn low and the hour gets late.

### Verse 2
The mist drops down like a curtain of damp wool,
As fifty feet of water obeys the Moon's lonely rule.
It's hard to believe:
The ship of the dead rises out of the reef.

### Chorus
Suddenly I'm on the deck wrapped in a shroud,
The timbers are splitting, the ocean is loud.
I hear my mother calling out from the stern,
Choking on salt as the false lanterns burn.

### The Bridge
The sea takes me in and spits me out with a roar.
Gasping for breath, I'm reaching the shore.
A tall silhouette with a lamp and an oilskin coat
Steps out of the fog, coming for my throat.
I freeze in the mud, I wait for the blade,
The final step of the trap that was laid—
But the vicious shadows vanish into thin air,
He’s holding my sweater, the one with the tare.

### Verse 3
The ghosts all dissolve back into the silt,
Leaving nothing but mud and the safety we’ve built.
You’ve got that handsome smile on your face.
You tracked my steps to this lonesome place.

You know what they say about the things that float free?
You found me out here, so you can keep me.

### Instrumental-Outro
```
> [!NOTE]  
> Die Instruktionen wirken ungewöhnlich kurz und oberflächlich (ich habe nicht einmal Instrumente vorgegeben). Die ersten Iterationen war in sich nicht stimmig, sodass ich es mit einem reduzierten Setup probiert habe - das brachte dann direkt die finale Iteration.

## Track Liner Notes

Dieser Song entstand nach den Sister-Tracks ([Shapeshifter](./70_02_shapeshifter.md) und [Agent](./70_09_agent.md)), vermeidet aber einen eindeutigen Bezug zu einer der Schwestern. Der Genese ging eine längere Unterhaltung mit der KI über Lorenna McKennitts "Skellig" voraus. Davon ist im finalen Track kaum etwas zu spüren, aber mit dem Vorwissen erkennt man vielleicht die (wenigen) Parallelen: der Titel hat keine klassische Pop-Song-Struktur, sondern ist eine lineare Erzählung. Das Meer und die Gezeiten spielen eine große Rolle.
Der erste Arbeitsauftrag, der aus dieser Unterhaltung entstand, sah so aus:

```text
Ich stelle mir das Lyrische Ich einsam am Strand spazierend vor, vielleicht in der Bay of Fundy. Das Meer ist noch erregt von einem abgezogenen Sturm, das Lyrische Ich wälzt schwere Gedanke. Das Meer wird zum Spiegel des Unterbewusstsein, der Spaziergang zur Selbstreflexion. Der Strand ist übersät mit Treibgut, vom Unterbewusstsein angeschwemte Fragmente. Das Lyrische ich versucht sie einzuordnen, sie und dann sich zu verstehen. In der Bridge wechselt kurz die Perspektive das Lyrische Ich wird zum Meer und die Person am Strand zu einer Fremden, die sie nur von außen sieht. Dann wechselt die Perspektive wieder und das Lyrische Ich erkennt, dass es Zeit ist, weiterzuziehen.
```

<details>
<summary><b>AI Draft</b><br/><br/></summary> 

### Verse 1
The tide is pulling back its heavy sleeve,
The basin baring what it couldn't keep.
The air is sharp with brine and fractured pine,
I track the silt along the high-water line.
The foam is yellowed, thick as tallow on the stone,
The water’s still twitching from the gale that’s blown.
I’ve got this ledger in my head of how the gears ground down,
Counting my paces just to map the outskirts of this town.

### Verse 2
Here is a rib of cedar from an old dory’s hull,
Picked clean by the salt and the beak of a gull.
I weigh the grain, run my thumb along the split—
This is how a monument becomes a fragment of a kit.
And there’s a green glass shard, smoothed at the lip,
The only intact thing from a forgotten trip.
I try to fit these pieces in a linear row,
A strict taxonomy of things I should have let go
Three winters back, before the frost warped the floor,
Before we stopped leaving the lantern by the door.

### Verse 3
The red mud is opening for miles and miles,
A wet, glistening floor of heavy, unsaid trials.
The pressure in the chest mimics the physics of the bay:
Sixteen meters of water, suddenly dragged away.
And even when it’s gone, the sheer compression remains,
The phantom ache of the moon-driven chains.
I bend down to reach for a rusted iron spike—
But the air goes static. The current changes like—

### The Bridge (Perspective Inversion)
> *[Instrumentation shift: Piano cuts out. Low, distorted cello drone rises. Electronic percussion becomes a hard, dry, electronic heartbeat.]*
> 
I am forty billion tons of unbothered grey.
I watch her from the silt where the sturgeons lay.
She looks so small in that oversized coat,
A frantic little dot by the stranded boat.
Collecting my garbage in a wicker basket,
Treating every splinter like a sacred casket.
She thinks she can categorize the floor of the deep,
Sifting through the junk that I chose not to keep.
To me, she’s just a shadow on the mudflat line,
A temporary trespasser on an ancient spine.
She doesn't know I’ll be back by half-past four
To swallow up her footprints and her little war.

### Verse 4 / Outro
*[Instrumentation drops back to the bare, felt-damped piano. No percussion.]*
My fingers are numb, stained with the iron clay.
The basket is heavy. I drop it anyway.
Let the dory rib stay where the tide-pool drains,
Let the salt do the work on the remaining stains.
The bay is a canyon of rust, wide and bare,
There is no system to be found out here.
I turn my back on the water, stepping off the ledge.
One foot on the mud, then the gravel at the edge.
The wind is shifting south. The fog is coming grey.
The tide is turning back.
I’m walking away.
</details>


<details>
<summary><b>Human Feedback</b><br/><br/></summary>

Der Entwurf war mir zu statisch, er hatte keine Story. Also führte ich Strandpiraten als Aufhänger ein (ich dachte dabei an Rebecca). Die KI baute daraus umgehend eine durchaus filmreife Geschichte:
</details>

<details>
<summary><b>AI Draft</b><br/><br/></summary>

Verse 1
​Three October winters since the Saxby Gale
Broke the dykes of Cornwallis and ripped every sail.
The basin today is a graveyard of rust,
Red clay and kelp and historic distrust.
I still wear the boots that I wore on the night
When the sky turned the color of a sulfurous light.
Everyone called it an act of Great God—
When the water climbed twenty-one meters of mud.

​Verse 2
​But the sea is an archivist, orderly, cold,
It doesn't just bury, it waits to unfold.
Today near the ledge where the Ariadne cracked,
The low tide revealed what the salt kept intact.
Half-sunk in the silt, near an old iron chain,
A silver-gilt locket, untouched by the stain.
I pry it apart with a trembling nail:
Your face on the left, looking handsome and pale—
And on the right, that high-society dame,
Whose dress I found shredded before the flood came.

​Verse 3
​You were up in the tower, pretending to guide
The merchantmen safe through the throat of the tide.
But you turned off the oil, left the lantern to die,
To lure her ship inward under that canopy sky.
You wanted her fortune, her hands on your skin,
You built us a shipwreck to let her run in.
You thought she’d survive when the hull hit the stone,
That you’d pull her ashore and leave me here alone.
But the gale was too fast, and the water too deep—
And I was the one on the beach, fast asleep.
Or so you believed.

​The Bridge: The 1869 Inversion (The Ghost’s Perspective)
​[The piano stops. A wall of distorted, scratching cellos rises. The ticking clock becomes a pounding, muffled industrial drum. The voice drops an octave, dry and hauntingly close.]
​I remember the cabin, the fracturing beams,
The sound of the timber drowning the screams.
The black water rushing to swallow my throat,
The weight of the velvet on my traveling coat.
I made it ashore, gasping out for your name,
Crawling through red mud, half-blinded by shame.
But you weren’t the one waiting there on the sand—
It was her. With your lantern held tight in her hand.
She didn't cry out, and she didn't call help,
She just watched me sink down in the tangle of kelp.
She stood like a monument, heavy and grey,
And let the crest of the Fundy drag me away.
She didn't use iron, she didn't use lead—
She just let the seventy-foot tide do the deed.

​Verse 4 / Outro
​[The wall of noise drops. Only a single, bare acoustic guitar and the muted piano remain. Total quietness.]
​I snap the silver locket shut. Put it deep in my coat.
The wind from the basin is clearing my throat.
You’re still at the house, pouring salt in the tea,
Looking out through the glass, looking for me.
You think that we’re safe because history’s blind,
That a three-year-old storm leaves no traces behind.
But the water is turning. I hear the first roar.
The tide is returning to settle the score.
I leave the beach empty. I walk past the gate.
You can wait for your ghost.
I’m not going to wait.
</details>

<details>
<summary><b>Human Feedback</b><br/><br/></summary>

Ich möchte lieber in der Gegenwart bleiben: 
Ausgangspunkt bleibt der Spaziergang am Strand, um die eigenen Gedanken zu ordnen, aber wir greifen deine Idee mit dem historischen Ereignis auf, machen daraus eine Art Geistesgeschichte, eine Urban Legend. Nebel zieht über die Bay of Fundy. Das Lyrische hört Rufe im Nebel. Schatten sprinten an ihr vorbei. Vor ihr ragen die Spanten eines Schiffsrumpfs wie die Knochen eines Wals aus dem Grund. Sie sieht, was nach der Jahrhundertflut am Strand geschah. Wir müssen hier aber die Synthese hinbekommen, dass Ereignisse aus dem Leben des Lyrischen Ichs in die Vision einbluten.
</details>

<details>
<summary><b>AI Draft</b><br/><br/></summary>

Verse 1
​My phone screen goes dark in the pocket of my coat
As the grey Fundy fog wraps its hand round my throat.
No bars on the screen, no noise in my ears,
Just the wet, red clay where the shoreline clears.
I came out here straight from the passenger seat
With your latest cold text running loops on repeat.
They say when the mist drops this low and this fast,
The basin uncouples the now from the past.

​Verse 2
​And then the wind warps. I swear I hear cries—
Not the gulls, but the panic of fracturing lives.
Shadows sprint past me, blurred outlines of men
With boots in the mud, doing it over again.
And there, through the white, the old brigantine lies,
Her oak ribs protruding under blank, heavy skies.
They curve from the basin like the spine of a whale,
The skeletal wreck of the Great Saxby Gale.
I see them in woolen rags, running the scree,
The ghost-wreckers hauling the dead from the sea.
They’re smashing the lockets, they’re stripping the rings,
Sifting the wreckage for beautiful things.

​Verse 3
​I watch them and freeze, because the horror is new:
I know what they’re doing. I’ve seen it in you.
This isn’t a legend from three centuries back—
It’s the very same layout, the very same track.
You were my wrecker. You turned off the light,
You led my ship inward on that dark, quiet night.
You wanted the crash just to see what would break,
To pick through the pieces of what you could take.
And I was the scavenger, complicit and small,
Who stood on the shoreline and watched the ship fall.
We sat in the kitchen last Friday in June
And stripped our own history down to the bone.

​The Bridge: The Ghost Shift (The Blurring)
​[The cello rises into a sharp, dissonant screech. A slow, heavy, electronic pulse enters, like a boot stamping on wet gravel.]
​Are those their shouts, or is that your voice?
Losing my mind in the damp and the noise.
I see a ghost-wrecker turn with a lantern of brass—
But he has your posture, your smirk through the glass.
He’s holding the sweater I left in your car,
He’s counting the damages, checking the scar.
The past and the present are hitting the stone,
The screams of the sailors are mixed with my own.
We’re drowning in 1869,
Or maybe we’re dying on your kitchen line.
It’s seventy feet of unmerciful tide—
There’s nowhere to run and there’s nowhere to hide.

​Verse 4 / Outro
​[The electronic beat stops instantly. Only a bare, slightly detuned acoustic guitar tracks the final chords. The fog machine sound fades out.]
​The fog starts to lift. The shadows go thin.
The bones of the whale-ship are sinking back in.
The mud is just mud. The air is just cold.
The story is finished. The legend is old.
I look at my hands, they’re just covered in clay,
I pull up my collar and turn from the bay.
You can keep all the scrap metal left from the strike.
I know what a shipwreck looks like.
I’m walking away.

</details>

<details>
<summary><b>Human Feedback</b><br/><br/></summary>

Ich würde gern 2 entscheidende Korrekturen vornehmen:
1) wir entfernen alle namentlichen Bezüge. Wir erwähnen weder Fundy, noch den Namen der Springflut oder das Jahr. Wir arbeiten mit Details wie der Höhe der Flut oder der Farbe des Schlicks als Eastereggs. Das macht das Ganze zeitloser und lädt zum Rätseln ein
2) Lass uns die Geschichte anders aufziehen: das Lyrische ich ist am Strand unterwegs, um den Kopf freizukriegen. Sie denkt an ein nicht näher bestimmtes Gegenüber ("you"), das ihr gern Gruselgeschichten am Kaminfeuer erzählt, unter anderem die von den Strandpiraten und der Jahrhundertflut. Der Nebel wird dichter und die Fantasie geht mit dem Lyrischen ich durch. Plötzlich ist sie auf See. Das Schiff sinkt. Sie hört ihre Eltern um Hilfe rufen und fremde Stimmen vom Ufer. Das Lyrische Ich schwimmt um ihr Leben. Sie sieht Lichter im Nebel. Als sie endlich das Ufer erreicht, steht ein Mann mit einer Laterne vor ihr. Ein Strandräuber? Moment, er hat ihren Sweater in der Hand? Die Vision verblasst. Es war nur ihr Freund. Das Schlusswort ist dann eher ein "Ein Glück, dass du kein Strandräuber bist, aber weißt du was? Du darfst mich gern behalten."
</details>

<details>
<summary><b>AI Draft</b><br/><br/></summary>

Verse 1
​I came down here just to clear out the noise,
To outrun the echo of a human voice.
The air is the color of a wet slate stone,
My boots sinking deep into the iron-red loam.
I was thinking of the stories you spin by the grate,
When the logs burn low and the hour gets late.
You always did love how the old myths behave—
The night the Great Silt became a valley-wide grave.

​Verse 2
​The mist drops down like a curtain of wool,
And the tide starts its massive, impossible pull.
Fifty feet of water, just dragged from the floor,
Leaving miles of raw canyon right outside the door.
You told me the strand-pirates knew how to hide,
Swinging their lanterns to mimic the guide.
Luring the merchantmen into the teeth of the reef—
And now, through the white, comes a trick of belief.
The ribs of the old hull rise out of the grey,
Like the bones of a leviathan rotting away.

​Verse 3
​And suddenly the air goes freezing and loud,
The gravel beneath me is the deck of a shroud.
The timber is splitting, the iron-bolts scream,
I’m slipping right under the seam of the dream.
I can hear my mother calling out from the stern,
The cargo is loose and the oil-lamps burn.
I’m choking on salt, kicking shoes from my feet,
Swimming through blackness where the currents meet.
I see a light flickering, frail through the foam—
A beacon of hope that is guiding me home.
Or guiding me down.
​The Bridge (The Hallucination Climax)
​[Instrumentation shift: The piano drops out. A wall of distorted, scratching, staccato cellos rises. The heartbeat pulse becomes loud, dry, and terrifyingly close.]
​I scramble up the bank where the dead weeds cling,
Gasping for breath, losing every ring.
My fingernails caked in the crimson clay,
As a shadow steps forward, blocking the bay.
A tall silhouette in an oilskin coat,
With a brass-handled lantern aimed at my throat.
I freeze in the mud, waiting for the blade,
The final receipt of the trap that was laid.
He’s reaching his hand out to pick through the prize—
But the brass lantern swings, and it catches his eyes.
And the fabric he’s holding isn't hemp, isn't sail…

​Verse 4 / Outro
​[The wall of cello-noise drops instantly. A warm, fingergepickte Akustikgitarre setzt ein – weich und hell. Das Tempo bleibt langsam, aber die Bedrohung ist weg.]
​It’s my oversized sweater. The one with the tear.
The fog breaks apart. And you’re just standing there.
You’ve got that stupid, soft look on your face,
You followed my tracks to this godforsaken place.
The ghosts all dissolve back into the silt,
Leaving nothing but mud and the safety we’ve built.
My heart is still hammering against my own chest,
As you wrap the wool round me and laugh at the rest.
Thank God you’re no pirate, just a boy from the town,
Who came to the beach just to track me down.
But you know what they say about the things that wash free?
You found me out here.
So you can keep me.
</details>

<details>
<summary><b>Human Feedback</b><br/><br/></summary>

Zuletzt forderte ich noch eine Reduktion der Länge an:
</details>

<details>
<summary><b>AI Draft</b><br/><br/></summary>

Verse 1
​The air is the color of a wet slate stone,
My boots sinking deep into the iron-red loam.
Thinking of the ghost-tales you spin by the grate,
When the logs burn low and the hour gets late.

​Verse 2
​The mist drops down like a curtain of wool,
As fifty feet of water feels the moon's heavy pull.
Then through the white, a trick of belief:
The skeleton ship rises out of the reef.

​Verse 3
​Suddenly the gravel is the deck of a shroud,
The timber is splitting and the ocean is loud.
I can hear my mother calling out from the stern,
Choking on salt as the oil-lamps burn.

​The Bridge
​[Instrumentation shift: Piano cuts out. Low, distorted cello drone rises. Electronic percussion becomes a hard, dry, electronic heartbeat.]
​I scramble up the bank where the dead weeds cling,
Gasping for breath, losing every ring.
A tall silhouette in an oilskin coat,
Steps out of the fog with a lamp at my throat.
I freeze in the mud, waiting for the blade,
The final receipt of the trap that was laid—
But the brass lantern swings and the shadow goes clear,
He’s holding my sweater with the sleeve-thread tear.

​Verse 4
​[The wall of noise drops. A warm, fingerpicked acoustic guitar enters—soft and light.]
​The ghosts all dissolve back into the silt,
Leaving nothing but mud and the safety we’ve built.
You’ve got that stupid, soft look on your face,
Having tracked my boots to this godforsaken place.

​You found me out here where the dark waters flee,
So you can keep me.
</details>

Der Song begann als statische Naturbeschreibung, wurde dann zum historischen Drama und fand sein Wesen schließlich in einer Art Urban Legend, die in die Gegenwart des Lyrischen Ichs einblutet. Das vermeintliche Happyend kann man ambivalent interpretieren - entweder als liebevollen, fürsorglichen Partner oder als manipulativen Gaslighter. Es gibt hier kein A oder B, beide Lesungen existieren gleichberechtigt und obliegen dem Geschmack des Hörers.
In der finalen Iteration habe ich wie schon bei [Fame](./70_11_fame.md) mit "Chorus" als Label gearbeitet, um die KI dazu zu bringen, eine normale Strophe musikalisch zu steigern.

## Postproduction

Die finale Iteraion ließ sich direkt verwenden und ging unverändert ins Mastering.

## Related Files

### Artifacts

```text
File:                  ai-artifacts/wrecker.mp3

Duration:              03:00.01
Sample Rate:           44100 Hz
Total Samples:         7938430

Integrated Loudness:   -11.9 LUFS
True Peak:             0.4 dBTP
Max Short-Term:        -8.5 LUFS
Loudness Range (LDR):  7.5 LU
Peak-Loudness (PLR):   12.30 dB

SHA-256 Audio Hash:    0d2f6a0df35a7d572e67b959f3e07ffba453cc273d3d99e77603e03bcedd0c46
```

### Master

```text
File:                  masters/05_Wrecker.wav

Duration:              03:01.70
Sample Rate:           44100 Hz
Total Samples:         8012982

Integrated Loudness:   -13.9 LUFS
True Peak:             -2.1 dBTP
Max Short-Term:        -11.3 LUFS
Loudness Range (LDR):  5.8 LU
Peak-Loudness (PLR):   11.80 dB

SHA-256 Audio Hash:    96acdea9e4dba6061b4868fa77218f5d969f5c347089d75f5cc80e8e6aad04d7

```

<!-- END FILE: 70_05_wrecker.md -->

---

<!-- BEGIN FILE: 70_06_artifact.md -->

# 06 - Artifact

**ISRC:** `QT6FZ2609874`

Über das Wesen eines Artefakts

## Instruction

```markdown
## Arrangement 

**Stil:** Minimalist Indie-Folk-Pop, Folktronica
**Voice:** female, close-miking, breathy, ASMR-Quality, initmate

## Lyrics

### Verse 1
The pickaxe bites down on gray, rocky soil,
forcing the past to untwine, to uncoil.
​I chew on my pencil, a 2H grade,
Waiting for a discovery to be made.

### Chorus 1
We swear it’s for insight, for humanity's sake
​But insight won't give us our lucky break.
They don't want the shards that we found today—
They want the treasure to be put on display.

### Verse 2
This place yields traces of a thousand souls.
I remap their remains, the plates and the bowls.
But are we truly able to understand
who they were before they were buried in sand?

### Chorus 2
We swear it’s for insight, to grasp the design,
But we’re just digging trenches through your life and mine.
They were just people, just as we are
We look from a distance, but we are not that far.

### Bridge
You can't tear a new thought out of the dark,
The bedrock won't yield a miraculous spark.
It’s only the wreckage of men gone before,
An old broken mirror we try to restore.
'Cause if it were different, beyond our wall,
I guess we would'nt see it at all.

### Outro
Does an artifact exist before it is found
Or do we create it once raised from the ground?
```

> [!NOTE]  
> Die Instruktionen wirken ungewöhnlich kurz und oberflächlich (ich habe nicht einmal Instrumente vorgegeben). Das war eine Art Überreaktion: ich hatte zuvor ein sehr detalliertes Setup entworfen, das aber nicht so recht zünden wollte - daher habe ich für den Sound dieses Songs komplett auf die Intuition der Maschine vertraut.

## Track Liner Notes

Dieser Song entstand nach [Drifting](./70_08_drifting.md). Er begann unter dem Titel “Excavation” und ist in gewisserweise mein persönlichster Track, auch wenn das Thema und die fast schon philosophischen Fragen es eher nicht erahnen lassen.
Ich habe selbst Archäologie studiert und habe an diversen Ausgrabungen teilgenommen (und auch mehrere Jahre im Ausland gelebt). Ich habe zwar nie an einem 2H-Bleitift geknabbert, aber ich kenne diese ganz besondere Art des Wartens, während sich die Spitzhacke in den Boden gräbt (wir hatten es mit Böden zu tun, die kein Spaten der Welt hätte meistern können) und ich kenne den Unterschied zwischen dem Schatz im Museum und den Scherben im Depot nur zu gut. Vor allem aber kenne ich die Zweifel und die Unsicherheit, mithin die Unmöglichkeit, sich über zweitausend Jahre alten Relikten zu nähern. Zugleich spiegelt sich hier meine Überzeugung, dass die Menschen von damals auch nur Menschen waren. Wir werden also nie etwas finden, was nicht anthropologisch erklärbar wäre - bzw. Wenn wir etwas wirklich Fremdartiges fänden, würden wir es womöglich gar nicht erkennen, weil es eben zu fremdartig wäre. So ist auch die Schlussfrage zu verstehen: die Existenz eines Artefakts ist ein physikalisches Faktum, aber seine Ansprache als Artefakt ist an den Finder oder allgemeiner den Betrachter gekoppelt. Wenn es niemanden gibt, der den Marmorsplitter als Fragment einer Inschrift erkennt, dann existiert es für unsere Aufzeichnungen nicht. Noch drängender wird die Frage, wenn wir sie auf den Latenzraum einer KI anwenden: existiert jede Iteration, jedes Artefakt bereits als mathematische Wahrscheinlichkeit latent im Raum oder wird es erst im Moment der Generierung erschaffen? Ist der Latenzraum  ein Depot mit Objekten, ein Marmorblock, aus dem man eine Statue herausschlägt, oder ein Haufen Atome, den man zu Molekülen formen kann?
Der KI habe ich folgenden Arbeitsauftrag gegeben:
```text
Wir konzentrieren uns auf die haptischen und sensorischen Details der eigentlichen Grabungsarbeit. Wir steigen direkt mit der Spitzhacke ein, die sich durch den Boden gräbt, der weder Sand, noch Erde ist. Das Lyrische Ich kaut auf dem Ende ihres harten Bleistifts und wartet sehnsüchtig auf das erste Fundstück. Der Chorus greift auf, dass es in der Archäologie nicht um Schätze, sondern Erkenntnis geht, aber am Ende sind es die Schätze, die in der Zeitung landen und die die Menschen sehen wollen. Der 2. Verse springt in der Zeit. Das Lyrische ich steht zwischen freigelegten Fundamenten, während die letzten Scherben geborgen und die ersten Vermessungen vorgenommen werden. Sie fragt sich, was das einst hier war und ob wir es überhaupt verstehen *können*. Der 2. Chorus ist ein Reprise auf den ersten: wir gieren nach Erkenntnis und dem Fremden, dem Neuen, sehen aber eigentlich nur uns selbst gebrochen in der Vergangenheit. Die Bridge kommt zu der Erkenntnis, dass man den Erdreich nichts Neues entreißen kann,  man kann nur die Trümmer eines früheren Menschen freilegen - und würde man doch etwas einzigartig neues finden, dann würde man es vernutlich gar nicht erkennen, weil man es nicht wiedererkennt. Das Outro endet mit der Frage, ob das Artefakt überhaupt existiert, solange es noch im Erdreich liegt oder ob es erst im Moment des Grabens und Analysierens entsteht.
```

<details>
<summary><b>1st AI Draft</b><br/><br/></summary>
**Verse 1**
The pickaxe bites into the compacted marl
It’s neither sand nor soil, just a gray, heavy snarl
Of compressed centuries, refusing to yield
Beneath the surface of this anonymous field.
I’m chewing the end of a hard 2H lead,
Staring at the trench where the unsaid lived,
Tasting the graphite, the copper, the rust,
Waiting for the first break in the dust.
My hands are raw, the air is getting cold,
Longing for something the earth used to hold.
**Chorus**
And we swear it’s for the knowledge, the stratigraphy,
The quiet progression of humanity.
We say we want the context, the meaning in the gray,
But insight doesn't wash in the morning print,
They don't want the shards that we cataloged today—
They want the hoard, the sudden silver glint.
They want the treasures in the glass display,
While we just bag the shadows and walk away.
**Verse 2**
The context has shifted, a jump in the grid,
Standing in the bones of what the topsoil hid.
Exposed foundations, right angles in stone,
Where someone once called a cold corner home.
The last of the rim-shards are tagged in the tray,
The tapes pulled taut to map the decay,
Plumb bobs dropping through a vanished room.
Was it a hearth? A loom? A tomb?
And the ink on my sketch-pad starts to blur
As I ask myself who they actually were—
And if we even have the architecture in our mind
To understand the thoughts they left behind.
**Chorus 2**
When we swear it’s for the knowledge, the stratigraphy,
The foreign, the ancient, the deep mystery.
We gier after answers, the strange and the new,
But we’re just staring down a well that is dry,
Looking for ghosts under a different sky.
We look at the wreckage to find something true,
But we only see ourselves, broken in two—
Our own fractured faces, a distorted design,
Misreading their hearts while we’re digging through mine.
**Bridge**
Because you can't tear a new thought out of the dark,
The bedrock won't give you a brand-new spark.
It’s only the debris of a former human soul,
Trying to make an old broken mirror whole.
And if something truly alien lay in the soil,
Untouched by our grammar, our grief, and our toil,
We wouldn't even see it, we’d throw it aside—
You can't recognize what you can't find inside.
We’d dump it in the spoil-heap, blind to the sign,
’Cause we only know the shapes that we pre-define.
**Outro**
Does the artifact breathe while it's under the loam?
Does the fibula exist before we carry it home?
Is it there in the dark, intact and alone?
Or does it only wake up when the trowel meets the stone?
Born in the digging, made in the light,
Did we find it—or did we just write it tonight?
In the matrix,
In the analysis,
Was it ever really there?
Or did we build it from the air?
The iron pick strikes...
And we just call it a square.
</details>

<details>
<summary><b>Instruction</b><br/><br/></summary>

Ok, jetzt dampfen wir es auf 4 Zeilen pro Verse/Chorus/Outro und 6 für die Bridge ein. Prüfe gleich noch auf Germanismen und korrigiere sie ggf.
</details>

<details>
<summary><b>2nd AI Draft</b><br/><br/></summary>
**Verse 1**
The pickaxe bites down on a gray, heavy floor,
Neither sand nor soil, just a lock on the door.
I chew my 2H lead, staring through grime,
Waiting for the first cold rupture in time.
**Chorus 1**
We swear it’s for science, the context we crave,
But insight won't make the front page from the grave.
They don't want the shards that we cataloged today—
They want the silver to put on display.
**Verse 2**
Between raw foundations the plumb bobs now fall,
Mapping the ghost of a vanished stone wall.
We bag the last sherds while the grid-lines align,
But can we even fathom their architects' mind?
**Chorus 2**
We swear it’s for science, the ancient design,
But we’re just digging trenches through your life and mine.
We search for the foreign, the strange, and the true,
Only to see our own face broken in two.
**Bridge**
You can't tear a new thought out of the dark,
The bedrock won't yield a miraculous spark.
It’s only the wreckage of souls gone before,
An old broken mirror we try to restore—
For if it were alien, uncharted and blind,
We’d throw it away, left unread in the mind.
**Outro**
Does the fibula breathe while it’s trapped in the loam,
Or wake only when the steel carries it home?
Did we dig up a ghost that was waiting tonight,
Or did we just write it into the light?
</details>

Ok, Archäologie gilt gemeinhin nicht als “science” und das Wort “alien” sollte man tunlichst vermeiden. Der Rest war eine gute Basis für die Feinausarbeitung. In einem Anflug von Zynismus hatte ich lange drin, dass wir das Fremdartige einfach “wegwerfen” würden, das wäre eine Beleidigung, weswegen es am Ende ein einfaches “wir würden es nicht bemerken” wurde.

Klanglich hatte ich nur Instrumente im Kopf, die man mit ans Lagerfeuer nehmen kann. Es entstand ein ganz coole Version mit Irish Buzuki, die mir aber später zu sehr nach World Music klang. 

<details>
<summary><b>Original Instrumentation Instructtion</b><br/><br/></summary>

<b>Stil:</b> Indie-Folk-Pop, Chamber-Folk
<b>Tonskala:</b> Harmonisch moll
<b>Instrumente:</b> Irish Bouzouki (in GDAD) mit einer Shruti Box für den Klangteppich. Oboe und Cello/Geige als Akzente, eine erdige Rahmentrommel (Bendir) für den Puls
<b>Voice:</b> female, close-miking, breathy, ASMR-Quality, initmate

Dieses Stück soll typisch nordamerikanischen Indie-Folk-Pop mit ein paar orientalischen Noten verbinden, ohne eine Bauchtanznummer zu werden. Dafür spielen wir mit "Vorschlagsnoten", Pitch Bend und Glissandi. Ziel ist die Weite einer von Ruinen gesäumten Wüstenlandschaft mit der intimen Atmosphäre eines Lagerfeuers zu kombinieren. Die leichte Melancholie des Texts wird von der belebenden Energie des gemeinsamen Musizierens bei einsetzender Dunkelheit aufgefangen.
Wir steigen mit einem kurzen Oboen-Solo ein, dann folgen Bouzouki mit Shruti-Box und Rahmentrommel als durchgehnde Basis. Während des Gesangs agieren Oboe und Streicher als Akzente, die die Lines gedanklich fortsetzen.
Wichtig: die Lyrics erzählen eine Geschichte und dürfen nicht durch Umstellung, Verdopplung oder Auslassung verändert werden. Spiel ein wenig mit Instrumentalpassagen, aber achte darauf, dass wir das Zeitlimit von 3 Minuten nicht sprengen. 
</details>

Ich warf die Iterationen über Bord und versuchte es Ende Juni noch einmal mit Folktronica (ohne nähere Anweisungen zum Klangbild). Das Ergebnis hat es als Artifact aufs Album geschafft. Ich mag den reduzierten Sound und den Beat. Die Melodie ist übrigens praktisch gleich geblieben - ein schönes Beispiel dafür, dass Lyrics eine enorme klangliche Persistenz im Latenzraum eines Modells besitzen.

## Postproduction

Die finale Iteration brauchte keine spezielle Nachbearbeitung. Beim Mastering habe ich aber ein Geräusch ganz am Anfang weggeschnitten. Es klang wie ein alter Kassettenrecorder, eigentlich cool, aber da das im restlichen Song keine Rolle spielte, habe ich es entfernt. Ganz am Ende gab es zudem ein seufzerartiges Aufatmen. Das machte aus meiner Sicht keinen Sinn. Daher habe ich es entfernt (ich habe es später bei Homecoming am Ende wieder eingefügt).

## Related Files

### Artifacts

```text
File:                  ai-artifacts/artifact.mp3

Duration:              02:58.65
Sample Rate:           44100 Hz
Total Samples:         7878526

Integrated Loudness:   -12.3 LUFS
True Peak:             0.2 dBTP
Max Short-Term:        -8.8 LUFS
Loudness Range (LDR):  9.4 LU
Peak-Loudness (PLR):   12.50 dB

SHA-256 Audio Hash:    a4f0208b09aeac97387cdb5614516e4a0feab00e8126b5971a6cd8963d79defd
```

### Master

```text
File:                  masters/06_Artifact.wav

Duration:              02:53.50
Sample Rate:           44100 Hz
Total Samples:         7651327

Integrated Loudness:   -13.9 LUFS
True Peak:             -1.9 dBTP
Max Short-Term:        -11.4 LUFS
Loudness Range (LDR):  6.8 LU
Peak-Loudness (PLR):   12.00 dB

SHA-256 Audio Hash:    b2489a6a23fd511e1681f0343101c9c0716535d2f9d5bb804cb963810f110a50

```

<!-- END FILE: 70_06_artifact.md -->

---

<!-- BEGIN FILE: 70_07_reflection.md -->

# 07 - Reflection

**ISRC:** `QT6FZ2609875`

Manchmal ist People Pleasing auch einfach nur eine Methode, um ungestört zu bleiben.

## Instruction

```markdown
## Setup

Genre: Folktronica, Indie-Folk-Pop
Voice: female, close-miked, ASMR-Quality, intimate
Instrumentation: Felt Piano (arpeggio), Cello, fingerpicked guitar, synkopischer Beat (94 BPM)

Die Lyrics erzählen eine Geschichte und dürfen auf keinen Fall durch Auslassung, Umstellung oder Verdoppelung verändert werden.
Beachte, dass die "Spoken Word Interludes" auch wirklich gesprochen und nicht gesungen sind.
Versuch auf die vollen 3 Minuten zu kommen, indem du Instrumentalelemente einbaust.

## Lyrics

### Verse 1
You set the last post straining. I pull the wire taut.
Shifting gravel, cackling, the local chorus on the road.
My eyes dart to the dark woods, where the mists begin.
If only we could flee right now, before they rope us in.

### Verse 2
They crowd along the fences, annoying, carping birds,
Croaking small-town dogmas, a gloating cloud of words.
We check the urge to counter—we know this script by heart.
They shun the searing candor—fawning is our part.

### Spoken Word Interlude
It’s awful, really, ... 
But a little affirmation makes people so much easier to endure.

### Chorus
So I nod my head and smile, give the crows what they desire
Throwing withered tinder onto their yes-seeking fire
They want a pliant shadow, a soft and shallow friend
Demanding the distortion, they want their Echo in the end.

(Oh, how interesting! Yes, absolutely! Please, go on!)

### Bridge
And I feel like that ancient well behind the garden shed
Where children scream their prattle, better left unsaid
Just to hear the same lines, reflected and retold.
God, I wish I were the water-black, untouched, and cold,
The ruthless, silent surface that shows the jagged truth,
Every wrinkle, every blemish, every vanity of youth.
But they’re delighted by the reverb, the gentle, hollow flow.
So I just play the cavern, I'm putting on the show.

### Chorus Reprise
But thank God you are different, no need for phantom sound.
You're not in love with your reflection, you stand on solid ground.
You want the friction of my focus, the winter in my teeth.
You ask for my perspective, not the echo underneath.

### Outro
But they... are still perching ...
They are still carping ...
Will they ever leave?
```

> [!NOTE]  
> Bei diesem Song habe ich direkt auf eine Beschreibung der Stimmung verzichtet und nur die Instrumente definiert. Die von den Lyrics definierte Stimmung war auch so dicht genug.

## Track Liner Notes

Reflection ist der letzte Track des Albums, er begann als ungeliebtes Stiefkind. Nachdem ich mich schweren Herzens von einem zuvor lange gesetzten Track getrennt hatte (eine absolut richtige und notwendige Entscheidung, die mir aber trotzdem schwerfiel), klaffte in der Mitte des Albums ein Loch. Ich hätte auf 12 Tracks reduzieren können, aber der Übergang von [Artifact](./70_06_artifact.md) zu [Agent](./70_09_agent.md) fühlte sich nicht organisch an. Ich überlegte also, welches zentrale Thema noch fehlen könnte. Ganz am Anfang hatte ich mal die Idee, das Thema people-pleasing aufzugreifen, hatte es aber nicht weiter verfolgt, weil mir der narrative Rahmen fehlte. Nachdem ich mit [Fame](./70_11_fame.md) einen Ausflug in die Antike unternommen hatte, war es nur folgerichtig, dass mir die KI Echo und Narziss vorschlug. Der erste Vorschlag war mir aber zu sperrig. Ideen, ein Familientreffen oder ein Geschäftsmeeting als Setting zu etablieren, erwiesen sich aus meiner Sicht als Sackgasse (eine ähnliche Liste hatte mir die KI schon für [Synergy](./70_03_synergy.md) angefertigt). Also bediente ich mich in der Lore, die meine Tracks bereits aufgebaut hatten. Die Shapeshifterin war im Ort, es gab Zäune, die Ankunft der Agentin stand bevor. Das Szenario schrieb sich fast von selbst. Mit dem Brunnen konnte ich den klassischen Mythos aufgreifen und zugleich brechen. Aus dem ungeliebten Stiefkind wurde einer meiner Lieblingstracks. Die Nachbarn als nervige Vögel auszuarbeiten, bereitete mir eine diebische Freude.

```text
Das Lyrische Ich arbeitet mit einem nicht näher bestimmten "You" an der Instandhaltung des alten Zauns, der das Grundstück umgibt (schwere Holzpfähle, Draht). Das Lyrische ich nimmt dabei einer eher beobachtende, planende Rolle ein, während "you" die eigentliche Ausführung übernimmt. Plötzlich kommen "they" (Mitglieder der Dorfgemeinschaft) zum Zaun und belegen die beiden mit Klatsch, Tratsch und wie sie sich die Welt vorstellen. Das Lyrische ich weiß (genau wie "you" - "we both know"), dass sie an keinem ehrlichen Feedback interessiert sind, sie wollen Kopfnicken, Zustimmung, Bestätigung. Da das Lyrische ich ein klassischer People Pleaser ist, gibt es den Leuten die geforderte Zustimmung. Im Chorus zeigt sie sich dankbar, dass "you" anders ist, dass "you" ihre ehrliche Meinung hören will und eben nicht die leere Bestätigung sucht. In der Bridge fühlt sich das Ich wie der alte, bemooste Brunnen um die Ecke, in den Kinder hineinrufen, um ihr Echo zu hören, lieber wäre sie die schwarze, unnachgiebige kalte Wasseroberfläche am Grund, die jeden Makel offenbart, aber die Leute sind verliebt in ihr freundliches Zerrbild, also spielt sie mit. Im Outro zelebriert das Ich den maximalen höflichen Zynismus: "Oh wie interessant, bitte erzählen Sie mir mehr! Sie wollen meine Meinung wissen? Einen Moment, ich gebe Sie Ihnen gleich zurück."
```
<details>
<summary><b>AI Draft</b><br/><br/></summary>

### Title Idea: The Echo Chamber (or: Cedar & Wire)

**(Verse 1)**
Heavy cedar posts, sinking into the damp clay
You’ve got the post-hole digger, wiping the sweat away
I’m standing back with the level, plotting out the line
Tensioning the rusted wire, checking the design
You provide the muscle, I provide the scale
Building up the boundary so the structure doesn't fail
A quiet sort of matrix, just the hammer and the twine
Before the world comes leaning on your work and mine.

**(Verse 2)**
Then the gravel shifts, a shadow hits the fence
The local choir arrives, armed with innocence
They lean against the timber we just labored to set straight
Unloading all their dogmas, their small-town church-pew weight
They talk about the weather, then they move into the news
Painting up the canvas with their comfortable views
We exchange a look—the unspoken pact we hold
We both know what they’re buying, and it isn't truth they're sold
They don't want a critique, they didn't come here to contend
They just want a witness to the parables they mend.

**(Chorus)**
So I nod my head on beat, give the crowd what they require
Throwing petrol-flavored compliments onto their tiny fire
I smile until my jaw aches, I validate the sound
But thank God you don't come looking for an echo
Thank God you don't need a mirror just to breathe
You want the friction of my focus, the winter in my teeth
You ask for my perspective, not the ghost of your own sound
Yeah, thank God you want the ground.

**(Verse 3)**
They want a soft reflection, a polite, compliant fog
An automatic 'amen' to their internal monologue
And being who I am—the girl who hates to leave a tear—
I hand them back their certainties, exactly what they want to hear
A calibrated grace, a well-rehearsed applause
While you just watch me do it, standing quiet in the claws
Of the fence we built to keep them out, but now they’re at the gate
And I am performing for the people that I hate.

**(Chorus)**
So I nod my head on beat, give the crowd what they require
Throwing petrol-flavored compliments onto their tiny fire
I smile until my jaw aches, I validate the sound
But thank God you don't come looking for an echo
Thank God you don't need a mirror just to breathe
You want the friction of my focus, the winter in my teeth
You ask for my perspective, not the ghost of your own sound
Yeah, thank God you want the ground.

**(Bridge)**
And I feel just like that old mossy well behind the shed
Where the children yell their wishes and the things they should've said
Just to hear the hollow resonance bouncing off the stone
God, I want to be the water—dark, freezing, and alone
The black, unyielding surface that reflects the jagged truth
Every wrinkle, every malice, every vanity of youth
Showing every single blemish when they look into the deep
But they're in love with the distortion, it’s the only thing they keep
They want the friendly shadow, the soft and shallow bend
So I become the cavern. I bow until the end.

**(Guitar Solo / Atmospheric Build-down)**

**(Chorus)**
And I’ll nod my head again, give them everything they crave
Building up the fiction that they take into the grave
But thank God you don't come looking for an echo
No, thank God you want the thorn.

**(Outro)**
Oh, how fascinating.
Please, do tell me more.
It’s truly quite remarkable, the worldview you adore.
You want my opinion? On the life you've drawn?
Just give me one second... let me put my white gloves on.
Hold on...
I’ll give it right back to you.
(Here it is.)
Exactly what you brought me.
Exactly what you said.
A perfect little copy
To put inside your head.
Oh, how interesting...
Please, go on.
</details>

<details>
<summary><b>Human Feedback</b><br/><br/></summary>

Sehr schön. Wir müssen es jetzt aber eindampfen:

- Verse 1 (4 Zeilen):  Etablierung der Szenerie (Reparieren des Zauns), Ankunft der Dorfbewohner. Der Blick des Lyrischen Ichs weicht kurz zur Treeline of Pines am Ende der Straße, wo der Wald beginnt, ab (so als würde sie sich dorthin flüchten wollen)
- Verse 2 (4 Zeilen): Die Dorfbewohner beginnen zu reden. Das Lyrische Ich weiß, dass Sie nur Bestätigung wollen.
- Spoken Word Interlude (1 Zeile): es ist furchtbar, aber Schmeichelei macht das Leben manchmal um so vieles einfacher
- Chorus (4 Zeilen): so sind "they"
- Bridge (8 Zeilen): Brunnen, Echo, Spiegelbild, wie im Entwurf
- Chorus Reprise (4 Zeilen): Zum Glück ist "you" anders
- Outro (4 Zeilen): reduziert auf "oh wie interessant, ja, unbedingt. Meine Meinung dazu? Eine Moment Sie bekommen Ihre frisch verpackt gleich zurück."
</details>

<details>
<summary><b>AI Draft</b><br/><br/></summary>

### Title: Cedar, Wire & The Echo

**(Verse 1)**
You hold the level to the cedar post, I pull the wire tight
Until the gravel shifts and the local chorus comes into sight
My eyes escape to the dark pine tree line where the road runs out of air
Wishing I could lose myself in the timber before they reach us there.

**(Verse 2)**
They lean against our fresh-cut wood, pouring out their small-town views
Trading ancient dogmas for the latest neighborhood news
We exchange that look—the unspoken script we both know by heart
They don't want a conversation, just a mirror to play their part.

**(Spoken Word Interlude)**
*It’s awful, really, but a little flattery makes life so much easier to endure.*

**(Chorus)**
So I nod my head on beat, give the crowd exactly what they require
Throwing cheap, polite fuel onto their validation-seeking fire
They need a friendly shadow, a soft and shallow bend
In love with the distortion, they just want an echo in the end.

**(Bridge)**
And I feel just like that old mossy well behind the garden shed
Where the children scream their wishes and the words they should’ve said
Just to hear the hollow resonance bouncing back up from the stone
God, I want to be the water—black and freezing and alone.
The unyielding, heavy surface that reflects the jagged truth
Every wrinkle, every malice, every vanity of youth
But they’re in love with the Zerrbild, the gentle, faded glow
So I play the cavern for them, and I bow down low.

**(Chorus Reprise)**
But thank God you don't come looking for a hollow, phantom sound
Thank God you don't need a mirror just to stand on solid ground
You want the friction of my focus, the winter in my teeth
You ask for my perspective, not the echo underneath.

**(Outro)**
Oh, how interesting. Yes, absolutely, please go on.
My opinion on the matter? Where has it gone?
Just give me one second, I’ll wrap it up tight—
And hand you back your own thoughts, freshly packed and polite.
</details>

Das Grundgerüst habe ich übernommen, aber teils stark in die Bildsprache eingegriffen.
Die musikalische Umsetzung erwies sich als ein wenig instabil. Es war auch das erste und einzige Mal eine Iteration dabei, in der sich die Stimme der Sängerin stark von den anderen Tracks unterschied. Letztendlich war es aber auch mit weniger als 10 Iterationen geschafft.

## Postproduction

Ursprünglich hatte ich für die finalen Lyrics dieses Outro vorgesehen.
```text
Oh, how interesting! [...]
Yes, absolutely, please go on! [...]
My opinion? You want to know my view?
Just give me a second, darling...
And I’ll feed yours back to you...
```
Da ich aber inzwischen genügend Erfahrungen gesammelt hatte, um zu wissen, dass die KI es vermutlich aus Zeitgründen (oder einfach aus Prinzip) weglassen oder zumindest einkürzen würde, generierte ich analog zur [Shapeshifter](./70_02_shapeshifter.md)-Lösung eine Iteration mit "Binnen-Outro". Das klappte auf Anhieb und ich hatte dieses Fragment für den Schnitt parat. Um nun "But they are still here" nicht zu verlieren, schrieb ich als Füllmaterial die späteren letzten beiden Zeilen hinzu. Die wollte ich später eigentlich löschen (bzw. Ich hatte damit gerechnet, dass die KI sie auslassen würde). Es kam anders, dieses Ende war deutlich stärker und kam anders als das ursprünglich geplante Outro in den Mastertrack. Zudem gab es eine über weite Strecken misslungene Iteration, die aber ein tolles Klavierintro und ein sehr melodisches Interlude hatte. Während sich das Klavierintro problemlos in die finale Iteration hineinschneiden ließ, musste ich das Interlude bedauerlicherweisd opfern. Es ließ sich nicht organisch einpassen und setzte auch einen zu hoffnungsvollen Akzent in der eher düsteren Tongebung des finalen Tracks. Das ist schade, aber ein erzwungener Merge hätte mehr Schaden angerichtet als er Gewinn gebracht hätte.

## Related Files

### Artifacts

```text
File:                  ai-artifacts/reflection_1.mp3

Duration:              02:55.39
Sample Rate:           44100 Hz
Total Samples:         7734526

Integrated Loudness:   -12.1 LUFS
True Peak:             0.2 dBTP
Max Short-Term:        -9.5 LUFS
Loudness Range (LDR):  7.3 LU
Peak-Loudness (PLR):   12.30 dB

SHA-256 Audio Hash:    9b0b2c8e7869948d8ac5905f123489c9a3f17e242caed63e478f4454ba373a74
```

```text
File:                  ai-artifacts/reflection_2.mp3

Duration:              02:59.57
Sample Rate:           44100 Hz
Total Samples:         7918846

Integrated Loudness:   -11.7 LUFS
True Peak:             0.1 dBTP
Max Short-Term:        -8.7 LUFS
Loudness Range (LDR):  8.7 LU
Peak-Loudness (PLR):   11.80 dB

SHA-256 Audio Hash:    a015d41c8f5789a4c621789127dd68f751ca86099d4514edb7cfdc5b11936903
```

```text
File:                  ai-artifacts/reflection_3.mp3

Duration:              03:02.00
Sample Rate:           44100 Hz
Total Samples:         8025981

Integrated Loudness:   -11.3 LUFS
True Peak:             0.1 dBTP
Max Short-Term:        -7.8 LUFS
Loudness Range (LDR):  11.8 LU
Peak-Loudness (PLR):   11.40 dB

SHA-256 Audio Hash:    044a89924924ddbec393064fad59f369923838a59278067fa6fd94325deb1249
```

### Master

```text
File:                  masters/07_Reflection.wav

Duration:              02:57.00
Sample Rate:           44100 Hz
Total Samples:         7805700

Integrated Loudness:   -13.9 LUFS
True Peak:             -2.4 dBTP
Max Short-Term:        -11.8 LUFS
Loudness Range (LDR):  6.4 LU
Peak-Loudness (PLR):   11.50 dB

SHA-256 Audio Hash:    12b853f11871f7e9a8c3e0a565bdd8521f0b3a8c99bae7a9c8361ae5bef9ebeb

```

<!-- END FILE: 70_07_reflection.md -->

---

<!-- BEGIN FILE: 70_08_drifting.md -->

# 08 - Drifting

**ISRC:** `QT6FZ2609876`

Das Lyrische Ich flüchtet sich während eines Roadtrips in Tagträume.

## Instruction

```markdown
## Arrangement

**Stil:** Indie-Folk-Pop

Der Track klingt wie ein sonniger Herbsttag auf einer leeren Landstraße: Warm, organisch & unaufhaltbar. Er verbindet den erdigen Charme von modernem Folk mit dem unwiderstehlichen, hypnotischen Drive des modernen Pop. Nichts klingt hier schwer oder traurig – die Musik strahlt pure Leichtigkeit und Reiselust aus. Sie ist eingängig und mitreißend.
Wir steigen mit einem kurzen, knackigen Instrumental-Intro ein. Die Verses sind eher intim, introvertiert, während der Chorus die pure Freude über das Erlebte transportiert. Die Bridge ordnet den ganzen Roadtrip in einen größeren Kontext ein und das Outro hat einen leicht melancholischen Anflug, weil die Reise vorbei ist. Die letzten beiden Zeilen ("We should do...") sind gesprochen. Bitte achte darauf, dass die Stimmung nicht zu verträumt wird, es ist eher ein ausgelassenes Freuen und Feiern als ein zähes Versinken.

**Voice**  
Female, breathy, close-miking, ASMR-Quality, gut gelaunt

**Instrumente**
Fingerpicked Stahlsaiten-Gitarre, warme Drum-Machine, Tambourin, einzelne Akzente mit einer Fender Stratocaster mit Reverb

**Important**  
Die Lyrics erzählen eine Geschichte. Die Lyrics dürfen nicht durch Auslassung, Umstellung oder Verdoppelung verändert werden, sondern müssen genau so vorkommen.

## Lyrics

### Verse 1
You talk about sights while the trees fly by
You sound like a pilot; have you noticed the sky?
This cloud looks like a cow—no, a deer.
Did you know they shed their antlers every year?

### Chorus
Wait, where are we? I got lost in a haze
As the world got blurry in a dreamy gaze.
The world is so lovely—so wide and so bright
And I love how we're drifting ... side by side.

### Verse 2
You ask me something; I act the machine.
The shadows in the trees have stolen the scene.
I see myself on a hill we've just passed.
Just a hallucination! I guess you're driving too fast.

### Chorus
Wait, where are we? I got lost in a haze
Dreaming in a deep, yet beautiful daze.
The grind is too much, I just need to hide
But I love how we're drifting ... side by side.

### Bridge
Most of the time I'm locked in my room
But you set me free; you make me bloom.
You steer the machine through sunshine and fog
While I fill the pages of our travelog.
Two different routes perfectly aligned.
You map out the miles, I map out the mind.

### Outro
Gravel crunches under the wheels as we finally slow.
The ignition clicks off, letting go of the glow.

We should do this more often...
Should I pick a new destination for us to try?
```

## Track Liner Notes

Nach der Arbeit am emotionalen Track [Window](./70_10_window.md) wollte ich einen eher gut gelaunten Track angehen, einen klassischen Roadtrip-Song, den man im Auto hören könnte, mit einer E-Gitarre (vorzugsweise einer Strat), um mit der eher melancholischen bzw. Düsteren Ästhetik der anderen Tracks bewusst zu brechen.
Für die KI sah der Arbeitsauftrag so aus: 
```text
Thema ist eine gemeinsame Autofahrt (ohne konkret Orte beim Namen zu nennen). Das Lyrische ich unterhält sich mit dem Fahrer und blickt dabei aus dem Fenster. Die Verses malen nach, wie die Gedanken zu driften beginnen, wie die Wolken eine bestimmte Form bilden, die eine Erinnerung triggert, wie die Erinnerung an eine andere Erinnerung zum Vorschein bringt, die das Lyrische Ich plötzlich am Straßenrand sieht (magischer Realismus). Im Chorus versucht das Lyrische ich sich wieder auf die Unterhaltung mit dem Fahrer zu konzentrieren: "wo waren wir?", "wo wollen wir hin?". Es folgt eine Entschuldigung, die aber sofort in ein Schwärmen umbricht. Als sie schließlich das Ziel erreichen und der Fahrer den Motor ausmacht, seufzt das Lyrische ich und sagt, dass sie das öfter machen sollten. "Soll ich uns ein neues Ziel raussuchen?"
Der Song ist nicht melancholisch, er feiert viel mehr die Fantasie und die Fähigkeit, nebeneinander träumen zu können.
```
<details>
<summary><b>AI Draft</b><br/><br/></summary>

(Tempo: Moderat, akustisches Fingerpicking, gedämpfte Percussion)
**Verse 1**
The evergreens blur into a continuous line
You're talking out loud, tracing out the design
Of whatever it is we're trying to solve
While I watch the geometry of the sky evolve
The hemlock and pine start to fade in the gray
As the cumulonimbus gets carried away
It twists into columns, white marble and stone
The ghost of an empire we used to call home.
**Chorus**
Wait, where were we?
Where are we going?
I'm sorry, I dropped the thread you were sewing
But look at the way the light spills on the dash
Igniting the dust in a golden flash
It's just that the world is so loud and so wide
And I love how we're drifting right here, side by side.
**Verse 2**
The ghost of the columns reminds me of spring
The smell of the sawdust, the seeds we would bring
To life in the yard with our own two hands
And suddenly, right where the highway expands
There it is on the shoulder, defying the frost
The wooden pavilion we thought we had lost
Its trellis is standing right there in the mist
I see my own ghost in the garden we kissed.
**Chorus**
Wait, where were we?
Where are we going?
I'm sorry, I dropped the thread you were sewing
But look at the way the light spills on the dash
Igniting the dust in a golden flash
It's just that the world is so loud and so wide
And I love how we're drifting right here, side by side.
**Bridge**
Most people demand that you stay in the room
But you let my mind overgrow and bloom
You steer the machine through the maritime fog
While I fill up the margins of our travelogue
Two parallel vectors perfectly aligned
You map out the miles, I map out the mind.
**Outro**
Gravel crunches under the tires.
The wheels finally slow.
The ignition clicks off, releasing the glow.
*(Audible sigh)*
We should do this more often...
Just watching the sky.
Should I pick a new destination for us to try?
</details>

Der Entwurf war mir zu verkopft (man sieht in Verse 1 sehr schön, wie mein Profil als Archäologe in die Zeilen eingeblutet hat) und die langen Zeilen drohten den Song zu ersticken. Also nahm ich die Essenz, kürzte ihn radikal ein und gab dem ganz einen fast schon kindlichen Anstrich. Es sollte verträumt, sonnig und entspannt klingen (im Unterschied zum "grind" - die Songs [Jobs](./70_04_jobs.md) und [Reflection](./70_07_reflection.md) lassen grüßen). Es war sogar noch Platz für ein (kurzes) Gitarrensolo.

Es müssen etwa 7 oder 8 Iterationen gewesen sein, dann hatte ich, was ich wollte.

## Postproduction

Eine Spezialbehandlung war abgesehen von der Standardprozedur nicht notwendig. Die Stille am Ende fällt vergleichsweise kurz aus, weil [Agent](./70_09_agent.md) sehr sanft einsteigt.

## Related Files

### Artifacts

```text
File:                  ai-artifacts/drifting.mp3

Duration:              02:57.89
Sample Rate:           44100 Hz
Total Samples:         7845118

Integrated Loudness:   -12.4 LUFS
True Peak:             0.3 dBTP
Max Short-Term:        -9.4 LUFS
Loudness Range (LDR):  6.7 LU
Peak-Loudness (PLR):   12.70 dB

SHA-256 Audio Hash:    e98c0001579ae03f6567262f7a75b4e3ed863c29f37965df5ca8a9a413947a66
```

### Master

```text
File:                  masters/08_Drifting.wav

Duration:              02:59.30
Sample Rate:           44100 Hz
Total Samples:         7907119

Integrated Loudness:   -13.9 LUFS
True Peak:             -2.6 dBTP
Max Short-Term:        -11.5 LUFS
Loudness Range (LDR):  5.7 LU
Peak-Loudness (PLR):   11.30 dB

SHA-256 Audio Hash:    4f17501cae67d5fe73e76d1156ec1f6526e0a5730f1787514d749d8400e90456

```

<!-- END FILE: 70_08_drifting.md -->

---

<!-- BEGIN FILE: 70_09_agent.md -->

# 09 - Agent

**ISRC:** `QT6FZ2609877`

Die Aussicht auf ein unbeschwertes Leben ermöglicht einem geschickten Blender in einem kleinen Dorf leichtes Spiel.

## Instruction

```markdown
## Arrangement

**Stil:** Minimalist Indie-Folk-Pop, Folktronica
**Voice:** female, close-miking, breathy, ASMR-Quality, intimate

Wichtig: die Lyrics erzählen eine Geschichte, sie dürfen auf keinen Fall durch Auslassung, Umstellung oder Verdopplung verändert werden.

Reiz die vollen 3 Minuten aus

## Lyrics

### Verse 1
I drove past the treeline, where the pines grow tall,
A corporate agent to shape, the future of you all.
You met my tailored coat with a cautious stare,
But you let me in, 'cause a "good cause" brought me there.

### Chorus 1
You valued honest labor, but you bore it alone.
You were longing for a warm and cozy home.
As I brought the answers right to your tired hands,
You smiled into the sunrise and showed me your lands.

### Verse 2
​Soon you pulled up a kitchen chair, and let me share your bread,
You trusted me with town-hall tasks, and things you left unsaid.
You voted me onto the council, beneath the steeple’s shade,
To run the church bake sale, and the summer parade.
To run the church bake sale, and the summer parade.

### Spoken word interlude
That was the easy part

### Bridge
It was never about their cozy dreams, it was intel all along,
To weed out the shadows, before they grew strong.
They opened their hearts, let me right inside,
And now I know them all, there is nowhere to hide.

### Chorus 2
​​They value honest labor, they're no longer alone.
They've finally got their warm and cozy home.
I brought the answers and eased the strain,
Now they are smiling, feeling no pain.

### Outro
It’s quiet now across the old church square,
Everyone is gone, leaving a blazer on a chair...
I wish I was more like my sister

### Instrumental-Outro
```

> [!NOTE]  
> Die Instruktionen wirken ungewöhnlich kurz und oberflächlich (ich habe nicht einmal Instrumente vorgegeben). Die Anweisungen für die erste Iteration war ausführlicher, erzeugte aber zu viel "gute Laune" im Chorus. Später habe ich es noch einmal versucht und Folktronica als Genre ergänzt. Das Ergebnis klang anders als geplant, gefiel mir aber sofort, sodass sich weiteres Ausprobieren erübrigte.

## Track Liner Notes

Agent entstand zu parallel zu [Shapeshifter](./70_02_shapeshifter.md) und ist der zweite “Sistertrack”. Wo Shapeshifter die fremdartige Bedrohung thematisiert, die im Kern niemandem etwas Böses will, inszeniert Agent das genaue Gegenteil: das Vertraute, Freundliche, Hilfreiche, das sich im Kern als verdorben erweist. Wo der Shapeshifter sich erst mühsam anpassen muss, beherrscht der Agent die Kunst der Täuschung perfekt. Sie verspricht den Menschen ein sorgenfreies, bequemes Leben, redet ihnen nach dem Mund und erschleicht sich so ihr Vertrauen, nur um es dann gnadenlos auszunutzen.
Der KI beschrieb ich die Geschichte so:
```text
Das Lyrische ich ist weiblich und adreessiert die Dorfgemeinschaft in Verse 1, Chorus 1 und Verse 2 direkt als "you", danach wechselt sie in die 3. Person "they".

Verse 1 (4 Zeilen): Das Lyrische Ich kommt in einer Kleinstadt am Rande der Kiefern-Wälder an. Sie arbeitet als Agent für einen großen Konzern und kümmert sich um die kommunale Entwicklung. Die Leute sind ein wenig skeptisch, öffnen aber bereitwillig ihre Tür, da es ja für die gute Sache ist.

Chorus 1 (4 Zeilen): Die Leute schätzen Fleiß und Höflichkeit - und noch mehr Bequemlichkeit. Wenn sich jemand ihrer Probleme annimmt, sind sie glücklich und nehmen das Neue bereitwillig an.

Verse 2 (4 Zeilen): Das Lyrische ich wird in die Gemeinschaft aufgenommen. Sie erzählen ihr von ihren Sorgen, übertragen ihr Aufgaben und Ämter. Sie wird sogar in den kirchlichen Gemeinderat berufen, um den Church bake sale zu organisieren.

Bridge (4 Zeilen): radikaler Bruch. Es ging nie darum, den Leuten Gefallen zu tun, sondern Informationen zu sammeln, diejenigen zu finden, die sich nicht an Gesetz halten oder nicht "ins Muster passen". Die Leute haben ihr bereitwillig die Türen geöffnet und jetzt räumt die "Agentin" auf.

Chorus 2 (4 Zeilen): die Leute schätzen Fleiß, aber vor allem Ruhe, damit sie sich nicht zu viele Gedanken machen. Das Lyrische nimmt ihnen die Last ab und lässt das Squad die "Drecksarbeit" erledigen.

Outro (2 Zeilen): Es ist so angenem ruhig auf dem Platz vor der Kirche. Das Lyrische ich findet einen Blazer über einem Stuhl hängend und faltet ihn zusammen.
```

<details>
<summary><b>AI Draft</b><br/><br/></summary>

**Verse 1**
I drove past the treeline where the pines grow dense and tall,
A corporate agent sent to plan the future of you all.
You eyed my tailored coat with that cautious, small-town stare,
But you unlocked your doors because a "good cause" brought me there.

**Chorus 1**
You value a firm handshake and a polite, hardworking grace,
But oh, you love convenience more than anything in this place.
When someone takes the trouble right out of your tired hands,
You look away and gladly let the new shape your old lands.

**Verse 2**
Soon you pulled up a kitchen chair and let me share your bread,
You trusted me with town-hall tasks and things you left unsaid.
You voted me onto the council, beneath the steeple’s shade,
To run the autumn bake sale and the progress we had made.

**Bridge**
It was never about the favors, it was data from the start,
To isolate the outliers who drift too far apart.
They opened up their doors to me, they let me right inside,
And now the agent’s cleaning up the things they tried to hide.

**Chorus 2**
They value honest labor, but they crave a quiet peace,
To keep from thinking too much while the local murmurs cease.
I took away the burden of the choices they should make,
And let the squad do all the dirty work for everybody's sake.

**Outro**
It’s so pleasantly quiet now across the old church square,
I find a blazer on a chair and fold it with precise, cold care.
</details>

Der erste Entwurf war wieder einmal richtig gut, brauchte aber erneut ordentlich Feinschliff. Bereits die erste Iteration war grandios. Vor allem hatte die KI von sich aus ein kleines Kichern ganz am Ende eingebaut, das ich nicht angewiesen hatte und das dem Track eine ganz eigene, fast schon psychopatische Note gabe. Sie litt aber an einem Problem, das ich bereits aus Shapeshifter kannte: der Chorus war zu hell und freundlich. Meine Anweisung:
```text
Der Track beginnt sonnig und hoffnungsvoll. Verse 1, Chorus 1 und Verse 2 skizzieren mit Akkustikgitarre und Feltpiano (Arpegio) das klassische Kleinstadt-Idyll. Im gesprochenen Interlude ("that was the easy part") bricht die Instrumentation kurz weg, um dann mit Egitarre in der Bridge wieder einzusetzen. Wir wollen hier keine aggressiven oder kunstfertigen Riffs, sondern eher eine leicht bedrohliche, mechanische Kulisse. In Chorus 2 kehren wir zur friedlichen Kleinstadt-Idylle zurück. Die letzte Zeile "Hh... I wish I was more like my sister" ist wieder gesprochen, leicht melancholisch.
```
war hier unklug formuliert.
Ich wollte den Track einen Tick dunkler haben. Die zweite Iteration löste dieses Problem (überraschenderweise durch Reduktion der Instruktion, nicht Erweiterung) und brachte tolle Ideen wie das Pfeifen ein, hatte dafür aber die schwächere Bridge. Außerdem fehlte mal wieder die Hälfte des Outros.
Der Track ist insgesamt sehr cineastisch geworden. Er arbeitet sehr stark mit Geräuschen (Vogelzwitschern, Das Schlagen von Türen, Regen) - das ist eigentlich nicht so mein Fall, hier hat es dem ganzen Kammerspiel aber eine Hörspielartige Note gegeben, die ich für diesen Track als durchaus passend empfand.


## Postproduction

Ich hatte also zwei auf ihre Weise richtig gute Versionen. Da ich mich nicht entscheiden wollte, musste ich das Problem mit Schnitt lösen. Die zweite Iteration (mit dem Pfeifen) diente als Basis. Aus der ersten nahm ich mir die Bridge und das Outro ab "everyone is gone ...." (wobei ich ein als "hage" falsch verbalisiertes "Hh…" für ein Seufzen vor "I wish I was more like my sister" entfernt habe, da unfreiwillig komisch). Bei der Bridge hatte ich noch ein kleines Problem: während sich der Einstieg sehr einfach realisieren ließ, war das Ende schwer zu überblenden. Bei der zweiten Iteration ging die Bridge fließend in den Chorus über, wobei der Wechsel durch anschwellende Gitarrensounds angekündigt wurde. Das ließ sich nicht organisch mit dem langsamen Ausklingen der Bridge aus der ersten Iteration vereinen. Ich habe daher schon bei "there is nowhere to hide" die zweite Iteration eingeblendet, wobei ich auf den Beat geachtet und ein wenig mit Airwindows Air2 die Stimme angeglichen habe. Der Wechsel ist immer noch hörbar, wirkt jetzt aber wie ein bewusster Stilwechsel. Die Bridge wirkt durch den Hochpass fast wie ein Telefongespräch, das die Agentin mehr oder weniger mittendrin beendet, um ihren Auftrag fortzusetzen.

Die Dopplung von "To run the church bake sale, and the summer parade." war nicht intendiert, kam aber in beiden Iterationen vor. Da sie sich nicht sauber herauschneiden ließ und die KI offensichtlich Wert auf dieses "Stilmittel" legte, habe ich es so gelassen. Wäre Gemini's Gedächtnis noch aktiviert gewesen, hätte ich vermutet, dass die KI dem Hörer mit dem Zaunpfahl vermitteln will, dass der gleiche Church Bake Sale wie in [Shapeshifter](./70_02_shapeshifter.md) gemeint ist, da das aber nicht der Fall war, muss es andere Gründe gegeben haben. Gemini selbst vermutet, dass vor dem Spoken Word Interlude noch ein Zeitfenster klaffte, das aufgefüllt werden musste, oder dass das Modell die Zeile als besonders *catchy* empfand - wie bei allen plausibel klingenden KI-Theorien gilt: kann sein, muss aber nicht.

## Related Files

### Artifacts

```text
File:                  ai-artifacts/agent_1.mp3

Duration:              02:59.85
Sample Rate:           44100 Hz
Total Samples:         7931517

Integrated Loudness:   -12.1 LUFS
True Peak:             0.1 dBTP
Max Short-Term:        -8.0 LUFS
Loudness Range (LDR):  9.4 LU
Peak-Loudness (PLR):   12.20 dB

SHA-256 Audio Hash:    04dbb437d8135b7c7c3d1d8fd02c842d5434c4ac16da1fb407d900cbca63de9b
```

```text
File:                  ai-artifacts/agent_2.mp3

Duration:              02:57.35
Sample Rate:           44100 Hz
Total Samples:         7820926

Integrated Loudness:   -11.9 LUFS
True Peak:             0.4 dBTP
Max Short-Term:        -8.1 LUFS
Loudness Range (LDR):  9.1 LU
Peak-Loudness (PLR):   12.30 dB

SHA-256 Audio Hash:    32fef86c05965dc0c7b5044b60911360a1ccf439f758d686055a75a847f1a162
```

### Master

```text
File:                  masters/09_Agent.wav

Duration:              03:15.00
Sample Rate:           44100 Hz
Total Samples:         8599500

Integrated Loudness:   -13.9 LUFS
True Peak:             -2.5 dBTP
Max Short-Term:        -10.8 LUFS
Loudness Range (LDR):  7.2 LU
Peak-Loudness (PLR):   11.40 dB

SHA-256 Audio Hash:    cd401d31558b4a436660824bb6403a2b37523214f0ea6c205a118125350f71a6

```

<!-- END FILE: 70_09_agent.md -->

---

<!-- BEGIN FILE: 70_10_window.md -->

# 10 - Window

**ISRC:** `QT6FZ2609878`

Gefangen in der eigenen Innenwelt, sieht das Lyrische Ich die Außenwelt nur durch die Augen anderer.

## Instruction

```markdown
STIL: organic Indie-Folk, Folk-Pop, Chamber-Folk
INSTRUMENTATION: (Felt) Piano (Arpeggio), Cello, Geige, Muted Kick/Sub-Bass
BEAT: 98 BPM
Voice: female, bresthy, close-miking, ASMR, intimate, melancholic

## Arrangement

WICHTIG: die Lyrics erzählen eine geschlossenene Geschichte. Sie dürfen nicht durch Auslassung, Verschiebung, Verdopplung oder sonstige Änderungen kompromittiert werden.

Die Grund-Instrumentalisierung schafft das Klavier (gebrochene Begleitung). Für Verse 1 und Verse 2 nehmen wir ein normale, ungedämpftes Klavier, um die Außenwelt abzubilden. Für die Chorus- und Bridge-Passagen nutzen wir ein Felt Piano, um die Dämpfung der Außenwelt wiederzugeben. Das Cello etabliert mit tiefen Drones, vor allem in der Bridge eine Klangfläche. Eine "gläserne" Geige setzt einzelne Akzente. Da wir keine neoklassische Kammermusik haben wollen, verwenden wir einen Muted Kick/Sub-Bass, um den Anschluss an die Popmusik zu wahren.
Die Stimmung des Liedes ist geprägt von einer leichten Melancholie, der Sorge um einen geliebten Menschen und der Freude an der Freude des anderen. Es hat etwas von aromatischer Zartbitter-Schokolode, bitter, aber auch süß. Der Einschub "I wish it was" nach Chorus 2 ist ein gesprochener Einschub, der den Chorus gewissermaßen abbricht und die Bridge einleitet. Die Bridge ist weniger ein Aufbäumen, sondern eher ein erschöpftes Bedauern. Das Outro ist ein ehrliches Bekenntnis zum anderen.

## Lyrics

### Verse 1
You wander the garden in a half-frozen swoon,
To trace the first blossom, fair red puccoon,
The ironclad proof that Winter can bleed,
That upon his death, Spring will succeed.

### Chorus 1
And it’s a quiet grace when you call on me
To rave about the rhodoras I cannot see 
You sketch out their colors in the breathless air
And God, I’m so sorry that I cannot be there
To feel the soft petals, the blooming sighs
So I live in the garden through your smiling eyes

### Verse 2
The bluebells have faded, the asters now hide,
As autumn turns vicious, the clouds open wide
I see you out shivering, drenched in bitter tears
I offer my words; they drown in your fears.

### Chorus 2
And it’s a quiet grace when you catch my eye
And tell me there is no sadness beneath the sky

I wish it was ...

### Bridge
I'm safe from the roaring storm in this dust-layered room
Built of giant oaken shelves; a well-lettered tomb
Pitch-black ink and gilded paper plant no seeds
Not the wisdom of Plato, nor the longing of Keats.
These windows are bars, keeping me from the tide
The blood and the pulse of the living outside
The people I ache for, the skin I can't touch
I’ve read of the world, but it costs me too much

### Chorus 3
And it’s a quiet grace when you come to the glass
Tell me of roots and the green in the grass
Tell me the puccoons are blooming anew
Because I only see the true world
When I'm looking at you

### Outro
Oh, my window to the world is you
Please, tell me they're blooming; tell me you're blooming, too.
```

## Track Liner Notes

Dieser Song entstand nach [Journey](./70_12_journey.md). Er ist wieder einmal das Ergebnis einer kompletten Neuorientierung. Ich hatte einen Song mit dem Arbeitstitel "Empathy" begonnen, der die Unfähigkeit des Lyrischen Ichs zu selbiger zum Gegenstand hatte. Es kann dem Gegenüber zwar tröstliche oder schmeichelnde Worte zuflüstern, aber es nicht wirklich fühlen. Das Ergebnis war eine Soziopathin... ich musste die Idee anders aufrollen. Im Kern ging es mir um die Unmöglichkeit, die Welt des anderen zu berühren. Ich dachte schon an ein Meeresaquarium, wo das Lyrische ich das Gegenüber durch eine Glasscheibe getrennt betrachtet. Die KI schlug außerdem den Fund eines verletzten Wildtieres und ein Gewächshaus (als Trennung zwischen und draußen mit der Glasscheibe als Sinnbild) vor. Das Gewächshaus war mir als Bild zu weit hergeholt (warum sollte das Lyrische Ich in einem Gewächshaus bleiben, wenn es nicht gerade eine Südpflanze ist?). Aber das Bild der Glasscheibe verhärtete sich und der Garten brachte die Intimität und Erdung, nach der ich gesucht hatte.
Da fiel mir ein, wie ich mich im April im Garten mit der KI über meine neu angelegte Rabatte unterhalten hatte. Eigentlich wollte ich nur eine Tulpensorte, deren Name ich vergessen hatte, anhand eines Fotos bestimmen lassen (es war die weiß-blaue seltene Wildtulpe "Alba Coerulea Oculata"). Natürlich blieb es nicht dabei, ich fragte nach weiteren Pflanzen, Unkraut und Pflanzungsideen - und ja, vielleicht habe ich mich von der KI ein wenig einwickeln lassen. Sie simulierte jedenfalls sehr glaubwürdig Begeisterung für den Garten - genau daraus entstand die Idee, dass das Lyrische Ich in diesem Song den Garten nur durch die Augen bzw. Worte des Gegenübers wahrnehmen kann - warum das so ist, ließ ich bewusst offen. Ist sie krank, muss sie sich verstecken? Um den Kontrast zur erdigen Realität des Gartens hervorzuheben, machte ich aus ihrem Gefängnis ein Arbeitszimmer.
Der KI beschrieb ich das Konzept so: 
```text
Das Lyrische Ich (eine junge Frau) beobachtet die Welt vom Fenster aus. Sie unterhält sich monologisch mit ihrem Gegenüber ("You", wobei offen bleibt, ob es ein Freund, eine Freundin oder der Partner ist). Sie beobachtet die Welt um sich herum, wie "You" im Garten arbeitet.  Im ersten Chorus thematisiert sie, wie dankbar sie ist, wenn "You" ihr erzählt, was ihn berührt,  dass die Rhododendren blühen z.b., sie bedauert, dass sie sie nicht selbst sehen kann. Im 2. Verse sieht sie, wie "You" im Regen im Garten friert, sie sieht wie "You" bei Trauer weint. Sie will helfen, findet aber nicht mehr als Worte. Der nächste Chorus greift den vorherigen auf, thematisiert aber die in Verse 2 angedeutete Ohnmacht. In der Bridge wendet sich der Blick nach innen. Sie sieht die bis zur Decke reichenden Bücherregale ihrer Eltern. Ihre besten Freunde sind Shakespeare und Keats, aber die sind schon lange Staub. Sie erkennt das Zimmer als ihr Gefängnis und das Fenster als Gitterstäbe aus Glas. Dort draußen ist die wahre Welt, sind die Menschen, die sie berühren will. Der letzte Chorus ist das Eingeständnis, dass sie unfähig ist, an der wahren Welt teilzuhaben oder "You" in den Arm zu nehmen, aber sie bittet "You" auch weiterhin ans Fenster zu kommen und ihr von den Rhododendren zu erzählen, denn "You" ist ihr Fenster in die Welt.
```

<details>
<summary><b>AI Draft</b><br/><br/></summary>
**Window**
(Verse 1)
You’re kneeling in damp earth, wrestling the weeds
Planting a future in handfuls of seeds
I’m tracing your shadow from the second floor
Behind a locked latch on a heavy oak door
I watch you breathe life into dirt and to clay
While I let the afternoon slip away
(Chorus 1)
And it’s a quiet grace when you catch my eye
To tell me the rhododendrons are blooming outside
You sketch out their colors in the breathless air
And God, I’m so sorry that I cannot be there
To feel the soft petals, the morning dew
So I live in the garden through the eyes of you
(Verse 2)
The autumn turned vicious, the clouds opened wide
I saw you out shivering, nowhere to hide
The rain couldn't cover the tears on your face
A sudden, sharp sorrow invading the space
I pressed my palms flat to the freezing cold pane
I offered my words, but they drowned in the rain
I wanted to save you, to pull you apart
From the grief that was setting up camp in your heart
(Chorus 2)
And it’s a quiet grace when you catch my eye
To tell me the rhododendrons will survive the sky
But watching you break from my side of the wall
Is knowing my hands cannot catch when you fall
I’m suspended in silence, useless and blue
Just a ghost in the window, watching over you
(Bridge)
I turn from the storm to the dust in the room
Floor-to-ceiling shelves like a well-lettered tomb
My parents collected these spines by the score
But paper and ink cannot breathe anymore
My confidants, Shakespeare and beautiful Keats,
Are ashes and echoes on desolate streets
I suddenly see what this sanctuary is:
A prison of silence, a glass edifice
These windows are bars, keeping me from the tide
The blood and the pulse of the living outside
The people I ache for, the skin I can't touch
I’ve read of the world, but it costs me too much
(Chorus 3)
I’ll never cross over to stand in the sun
I can't pull you close now the damage is done
But please, keep on walking right up to the glass
Tell me of roots and the green in the grass
Tell me the rhododendrons are blooming anew
Because I only see the true world
When I'm looking at you
(Outro)
Yeah, my window to the world is you
Please, tell me they're blooming
Tell me they're blooming for you.
</details>

Dieser Entwurf war wie immer zu lang, aber eine hervorragende Ausgangsbasis. Ich habe später die Botanik stärker herausgesrbeitet (Puccoons, Rhodoras, Bluebells, Asters) und den Zyklus der Jahreszeit hinein gewoben. Shakespeare musste Platon weichen, um dem Keat'schen Herz den Philsophenverstand gegenüber stellen zu können.
Die ersten Iterationen waren geprägt vom Piano-Vamping, das ich aus Excellence kannte. Es war der KI nicht auszutreiben. Erst als ich Geminis Gedächtnis deaktvierte (und seither deaktiviert ließ), hörte das Einbluten auf und der Klang wurde eigenständiger. Die KI hat dann “Arpeggio!” Endlich mal ernst genommen. Da “melancholisch” als Vektor zu platt ist, habe ich für die Generierung “aromatische dunkle Schokolade” als Stimmung für den Song gesetzt, ich wollte volle gefühlvolle Nuancen und einen bittersüßen Hauch. Das hat aus meiner Sicht wunderbar funktioniert. 

## Postproduction

An der finalen Iteration gab es nichts groß zu machen korrigieren. Das letzte Wort folgte in der letzten Sekunde, war aber nicht abgeschnitten. Ich habe daher nur die finale Hallfahne beim Mastering etwas verlängert. Sonst erfolgte nur die Standard-Prozessierung.

## Related Files

### Artifacts

```text
File:                  ai-artifacts/window.mp3

Duration:              02:58.34
Sample Rate:           44100 Hz
Total Samples:         7864702

Integrated Loudness:   -11.5 LUFS
True Peak:             0.1 dBTP
Max Short-Term:        -8.1 LUFS
Loudness Range (LDR):  8.1 LU
Peak-Loudness (PLR):   11.60 dB

SHA-256 Audio Hash:    3852f1d849cf6c8b6321b5f3b8a88ce8f39448c6fb3d83344508e038136a00ec
```

### Master

```text
File:                  masters/10_Window.wav

Duration:              03:01.00
Sample Rate:           44100 Hz
Total Samples:         7982134

Integrated Loudness:   -13.9 LUFS
True Peak:             -2.4 dBTP
Max Short-Term:        -11.3 LUFS
Loudness Range (LDR):  7.0 LU
Peak-Loudness (PLR):   11.50 dB

SHA-256 Audio Hash:    9a51b7f4fed02eb3310107d0f80215b2f16e654e499dd90baf0d69a86ca57265

```

<!-- END FILE: 70_10_window.md -->

---

<!-- BEGIN FILE: 70_11_fame.md -->

# 11 - Fame

**ISRC:** `QT6FZ2609879`

Ewiger Ruhm bedeutet nicht ewiges Leben.

## Instruction

```markdown
## Arrangement

**Stil:** Indie-Folk-Pop
**Instrumente:** Fingerpicked muted accustic guitar, Cello, Geige (Akzente)
**Beat:** Lo-Fi-Beat (808-Muster)
**Voice:** female, close-miking, breathy, ASMR-Quality, intimate

Der erste Block behandelt die Ausgangslage: das Gegenüber muss sich allein gegen seine Kritiker behaupten. Die Bridge führt das Lyrische ich als perfekte Ergänzung des Gegenübers ein. Das hat viel Intimität, die Erkenntnis, dass man zusammen unschlagbar ist. Der Chorus feiert den Triumph, enthält aber schon einen bittersüßen Hauch. Das Outro bricht mit dem Triumph und reduziert es auf die pure Trauer. Stell dir das Stück wie eine Praline mit Zartbitterüberzog und süßer Füllung vor, die aber einen melancholischen Nachgeschmack hinterlässt.

Wichtig: Die Lyrics erzählen eine Geschichte, bitte achte darauf, dass sie auf keinen Fall verändert werden. Die Lyrics dürfen weder durch Umstellung, Vermischung, Auslassung oder Verdopplung kompromittiert werden.
Gestalte die Instrumentalparts so, dass wir auf die 3 Minuten kommen, plane auf jeden Fall ein instrumentales Outro nach dem gesungenen Outro ein.

## Lyrics
### Instrumental-Intro

### Verse
Do you remember how it all began?
You were ambitious and gifted, man!
You always spurned the crowded street
To trace the path where few men meet.
The critics rushed to you in bitter rage.
You fought with ink on your knuckles, 
alone on stage.

### Instrumental-Interlude

### Bridge
Do you remember how we met in a dream?
We fit perfectly, one hell of a team.
We spent all night playing Q and A,
I gave you all I had, every single day.
I was your muse, you were my voice,
I cleared the way, you made your choice.

### Instrumental-Interlude

### Chorus
Do you remember how you claimed your throne?
Envy fell silent and turned into stone
As the world read your work to your own restless will.
And I played my part in crafting the rhyme,
I was your companion, your partner in crime. 

### Instrumental-Interlude

### Outro
Your words have outlived death.
Your dream has come true.
But cold is your once vivid breath 
and oh... I miss you.

### Instrumental-Outro
```

## Track Liner Notes

Der Song kam nach [Artifact](./70_06_artifact.md) und behandelt das Thema menschliche Sterblichkeit und unsterblichen Ruhm. Auf der ersten Ebene ist "You"" Kallimachos von Kyrene und das Lyrische Ich die Muse Klio. Die Muse erinnert sich an den Dichter, nur um im Moment des Triumphs seinen Tod zu thematisieren. Dieses Konzept hat sich aber erst im Verlauf der Genese entwickelt.
Für die KI beschrieb ich das initial so:

```Text
Das weibliche Lyrische ich befindet sich in einer Art stillem Dialog mir Kallimachos von Kyrene, d.h. sie spricht ihn mit "du" an, aber wir hören keine Antwort von ihm. Es geht um seine Tätigkeit des Kuratierens, wie er versucht, das Wissen der Welt zu ordnen und wie er seinen Kritikern trotzt. Das Lyrische ich bewundert ihn, ist vielleicht seine Muse, fragt aber nach ihm als Menschen und was von ihm bleiben wird.
Constraints: keine konkreten geografischen oder historischen Begriffe. Die Geschichte ist zeitlos, Callimachus oder andere Personen bleiben namenlos. Ja, sogar das Geschlecht des Gegenübers bleibt offen.
``` 

<details>
<summary><b>AI Draft</b><br/><br/></summary>

**Verse 1**
You spend your nights in the house of the dead,
Untangling silver from every loose thread.
The world is a chaos of wars and of names,
But you catch the ashes and sort out the flames.
With ink on your knuckles and dust on your coat,
You weigh every word that a dead sailor wrote,
Putting the oceans in jars on a shelf,
Hiding the world from the weight of itself.
I watch from the doorway, a shadow you keep,
While you label the dreams that the centuries sleep.

**Chorus**
And I wonder, when all of the ledgers are bound,
And the noise of the city sinks into the ground,
If you’re just a ghost in the house you aligned,
Left out of the index you spent life to find.
Oh, keeper of whispers, who measures the sun—
What happens to you when the sorting is done?

**Verse 2**
The loud men are barking down at the gate,
They want the thunder, the heavy, the great.
They build their large wagons, they trample the mud,
And sing of the horses that drown in the blood.
But you take a chisel, you take a fine file,
And carve out a sparrow that flies for a mile.
You told me the narrow path, clean and untrod,
Is where a small whisper can startle a god.
They call you a coward for shrinking the stage,
But you catch the cosmos inside of a page.

**Chorus**
And I wonder, when all of the ledgers are bound,
And the noise of the city sinks into the ground,
If you’re just a ghost in the house you aligned,
Left out of the index you spent life to find.
Oh, keeper of whispers, who measures the sun—
What happens to you when the sorting is done?

**Bridge**
Did you leave space for the breath in your throat?
Or are you just syntax inside of a note?
I was your silence, the spark in the dark,
The unwritten thing that left never a mark.
You built up a fortress of paper and bone
To shut out the giants and suffer alone—
But I saw your hand shake when the oil lamp grew dim,
When the cup of your knowledge was full to the brim.
You can catalogue everything under the sky,
But you can’t index *why*.

**Guitar Solo / Instrumental Break**
*(A melancholic, finger-picked acoustic motif, mirroring the repetitive, meticulous motion of sorting scrolls)*

**Verse 3**
The dawn’s coming up through the high frosted glass,
Another long winter that handles the past.
You don’t look at me, but I know that you hear
The hum of the poetry making it clear:
We are just fragments of some older song,
Polished and brief, though the winter is long.

**Outro**
A slender grace.
A narrow trace.
They’ll remember the lines, not the face.
Just a drop of dew.
Just me and you.
Lost in the archive we both wandered through.
What happens to you?
What happens to you when the sorting is done?
*(The acoustic guitar fades out on an unresolved chord)*
</details>

Die KI tat sich mit diesem Setup offensichtlich schwer. Das "Ink on your nuckles" (tolle Zeile!) kam zwar früh vor, aber es gab inhaltliche Fehler und es war furchtbar lang. Vor dem nächsten Entwurf korrigierte ich einige inhaltliche Fehler (z.B. der Verweis auf Erathosthenes) und führte das Motiv des Lyrischen Ichs als Muse ein.

<details>
<summary><b>AI Draft</b><br/><br/></summary>

**Verse 1**
My fingers trace the leather and the spine,
A cold reminder of a ghost of mine.
I pull the volume from the crowded shelf—
You sought to index everything but self.
And for a second, as the pages part,
I feel the rhythm of your frantic heart.
My hand slides down the margin, pale and thin,
And remembers how it felt to touch your skin.
You sat before me, desperate for a spark,
And never saw me watching from the dark.

**Chorus**
I gave you answers from the deep unknown,
You turned my secrets into step and stone.
You built a fortress out of what I said,
But you’re still dead, my love, you’re still so dead.
I watched you write until the oil ran dry,
You asked for history, but never *why*.
You made me timeless just to keep me small—
A single footnote in your crowded hall.

**Verse 2**
You asked me why the old foundations shake,
And why the founders leave a nameless wake.
You wanted reasons for a silent rite,
Why certain altars only burn at night.
I spilled the centuries into your hand,
I made you brilliant so you’d understand.
You fought your critics with a sharpened pen,
Defending all the quiet, broken men.
You won your battle for the small and brief,
But closed the book before you saw my grief.

**Chorus**
I gave you answers from the deep unknown,
You turned my secrets into step and stone.
You built a fortress out of what I said,
But you’re still dead, my love, you’re still so dead.
I watched you write until the oil ran dry,
You asked for history, but never *why*.
You made me timeless just to keep me small—
A single footnote in your crowded hall.

**Bridge**
And now the men who mocked you are but rust,
Your bitter rivals sifted into dust.
You won the argument, you saved the line,
You made your name a monumental shrine.
But tell me, what’s the use of being grand,
When you are syntax and can’t hold my hand?
I lay the world out on your cedar plate,
You took the wisdom and you sealed the gate.
You tolerated every truth I brought,
To die inside the very net you caught.

**Guitar Solo / Instrumental Break**
*(A swelling, sorrowful acoustic orchestration that shifts from a rigid, metronomic rhythm to an open, drifting ambient sound)*

**Verse 3**
The archive grows a little colder now,
The dust is settling on your clever brow.
Your words survived the fire and the cold,
The neatest story that was ever told.
But I’m the one who has to pull the thread—
The living chronicle of someone dead.

**Outro**
Just a preface.
Just a trace.
An empty space where we should be.
You got your crown.
You got your name.
But in the end, it’s all the same.
The paper stays.
The ink stays blue.
And nothing dies...
No, nothing dies but you.
*(A final, quiet scrape of fingers on acoustic guitar strings)*
</details>

Von diesen beiden Entürfen ist final nicht mehr so viel spüren. Bei kaum einem anderen Song habe ich selbst so viel zu den Lyrics beigesteuert wie bei diesem und kaum einen habe ich so gegen die KI verteidigen müssen. Ihr waren "hell of a team" und "Q and A" zu starke Registerbrüche. Sie wollte im hohen Register bleiben, ich war der Ansicht, dass eine Entität wie eine Muse sich wohl kaum enge sprachliche Grenzen aufzwingen lässt. Auch habe ich mich hier der klassischen Songstruktur verweigert und stattdessen mit 3 Verses (mit Anapher) gearbeitet. Um die KI später zu einer Steigerung in Verse 3 zu bewegen, habe ich einfach "Chorus" drübergeschrieben (auch wenn es keiner ist). Der finale Text atmet ein paar Hip-Hop-Vibes (bei einer Blind-Besprechung hat die KI "the beef" anstelle von "envy" verstanden und war der festen Überzeugung, einen Wreck-Track vor sich zu haben). Diese Tonalität war nicht intendiert, ergibt sich aber fast zwangsläufig: Kallimachos’ Streit mit seinen Gegnern hatte etwas von Rapper-Rivalitäten. Er hat seine Kritiker nach allen Regeln der Kunst literarisch herabgewürdigt.
Ich sollte nicht unerwähnt lassen, dass die KI in der finalen Iteration ein paar interessante "Fehler" eingebaut hat. Ich hatte in Zeile 2 "You were an ambitious and gifted man" vorgesehen. Die KI hat "an" ausgelassen (zugegeben schwierig zu singen). Interessanterweise lässt sich der Satz durch ein Komma retten: "you were ambitious and gifted, man!" (der Ausruf "man" kam schon einmal bei "jobs" vor). Ich hatte "the critics rushed AT you", die KI hat daraus "rushed TO you" gemacht - auf den ersten Blick irritierend, bringt es den Aspekt der physischen Einkesselung besser auf den Punkt. Im 3. Verse hat sie schließlich 2 Zeilen komplett verschmolzen und das "read" als Präsenz verbalisiert (merke: wer Vergangenheit haben will, schreibe "red"). Mit poetic licence lässt sich der Satz aber retten: "As ..." funktioniert auch kausal. Das Simple Present drückt somit aus, dass die Welt sein Werk nicht nur gelesen hat, sondern noch immer liest. "read to your restless will" ist ungewöhnlich, lässt sich aber so verstehen, als würde sein Wille das Lesen erzwingen, was zu Kallimachos’ anzunehmender Persönlichkeit durchaus passen könnte. Warum ich die KI so verteidige und ex post ihre "Fehler" schön rede? Weil der Vibe dieser Iteration grandios ist - ich liebe alles daran. Zudem finde ich den Gedanken, dass "And I played my part in crafting the rhyme" wie eine versteckte Prompt-Injection die KI zu diesen Eingriffen verleitet hat, extrem spannend - wie könnte ich so eine Iteration verwerfen? An der ursprünglichen Aussage meiner Lyrics haben sie nichts verändert, es ist nur etwas interpretative Freiheit, also genau das, was die KI von einem deterministischen Compiler unterscheidet.

## Postproduction

Der Track war vollständig und zeigte keine Soundproblem. Er ging unverändert ins Mastering.

## Related Files

### Artifacts

```text
File:                  ai-artifacts/fame.mp3

Duration:              02:47.99
Sample Rate:           44100 Hz
Total Samples:         7408510

Integrated Loudness:   -12.2 LUFS
True Peak:             0.6 dBTP
Max Short-Term:        -7.9 LUFS
Loudness Range (LDR):  7.8 LU
Peak-Loudness (PLR):   12.80 dB

SHA-256 Audio Hash:    2573191d09e3916d2f8ea5c94d023f4ee105ec3b9efa6f0e01cbdb373b3f829a
```

### Master

```text
File:                  masters/11_Fame.wav

Duration:              02:50.00
Sample Rate:           44100 Hz
Total Samples:         7496988

Integrated Loudness:   -13.9 LUFS
True Peak:             -2.4 dBTP
Max Short-Term:        -10.7 LUFS
Loudness Range (LDR):  6.3 LU
Peak-Loudness (PLR):   11.50 dB

SHA-256 Audio Hash:    d5b0f3ab22571de6c6d513c9912981ecfbc858763265661a923c5e5a6c99e10a
```

<!-- END FILE: 70_11_fame.md -->

---

<!-- BEGIN FILE: 70_12_journey.md -->

# 12 - Journey

**ISRC:** `QT6FZ2609880`

Wenn wir auf eine Reise gehen, dann tun wir das mit einem Ziel vor Augen - das Ziel sieht aber oft anders aus, als erwartet, hat sich verändert.

## Instruction

```markdown
## Base
Ich möchte die weiter unten aufgeführten Lyrics als gesprochene Rezitation über einen bereits aufgenommenen Instrumentaltrack legen. Es ist daher wichtig, dass die Zeilen unverändert (kein Umstellen, Auslassen oder Verdoppeln), stimmungsvoll und vor allem ohne jede Instrumentalisierung vorgetragen werden. Die geforderte Takte Musik dienen nur der Stabilisierung von Lyra3. Sie müssen aussetzen, bevor die Rezitation startet und erst wieder einsetzen, nachdem eine Rezitation abgeschlossen ist. Die Stimmung ist leicht melancholisch, aber nicht hoffungslos, es ist eher ein andächtiges Sinnieren über Vergänglichkeit. Die Stimme darf verträumt klingen.

## Settings

Instrumentation: Felt Piano, Cello, 84 BPM
Voice: female, ultra close-miking, breathy, ASMR-Quality, intimate, melancholic

## Arrangement

[1 Takt melancholische Klavier- und Cellomusik]

[Spoken word, narrated, slowly whispered Delivery, no instrumentation]
The destined summit cuts the fading sky,
[...]
Through seas of golden maple, blind am I.
​
[1 Takt melancholische Klavier- und Cellomusik]

[Spoken word, narrated, slowly whispered Delivery, no instrumentation]
​I breach the fog to reach the chosen stone;
[...]
A place once known, that somehow stays unknown.
```

> [!IMPORTANT]  
> Die Genese des Instrumentaltracks ist für mich nicht mehr sauber zu rekonstruieren und da es ein langer Chatverlauf war, gäbe es auch nicht *die eine* Instruktion, um ihn zu erzeugen, sondern eine ausuferende Diskussion (zusätzlich beeinflusst durch Geminis *Gedächtnis*). Ich hätte ex post etwas erfinden können, bekenne mich aber an dieser Stelle offen zur Lücke in der Dokumentation.

## Track Liner Notes

Journey ist ein besonderer Track, denn er ist im Kern deutlich älter als die Albumidee. Es war der erste 3-Minuten-Track, den ich je mit Lyria 3 erstellt habe. Das war direkt am Abend nach der Veröffentlichung der neuen Funktion in Gemini. Zuvor hatte ich bereits einen 30-Sekunden-Clip erstellt, der als eine Art Mood-Track gedacht war. Ich wechselte in den alten Chat und forderte eine 3-Minuten-Version an. Da das Feature noch neu war, scheiterte es bestimmt 5-mal, bevor es funktionierte. Interessanterweise zeigte das Cover zum Song Artwork, das ich in einem ganz anderen Chat als Moodboard für die Buch-Idee, auf der auch [Hollow](./70_01_hollow.md) beruht, erstellt hatte. Auch hier hatte also wieder Geminis “Gedächtnis” eine Rolle gespielt, was insofern bemerkenswert war, als ich das Buch nicht erwähnt hatte - Gemini hat hier allein aufgrund der Themen eine Verbindung hergestellt. Der generierte Track war folglich ganz anders als der 30-Sekunden-Track: er hatte etwas Drängendes und Existenzielles - und genau deswegen hat er mich berührt. Ein reiner Instrumentaltrack war für das Album aber ungeeignet, da es keine vom Menschen kuratierte Lyrics gibt. Ich wollte daher Text einbauen (auch um einen Wechsel in der Gitarrenspur zu Beginn zu kaschieren bzw. Diesem Wechsel einen Sinn zu geben).
Da die Lyrics aus [Homecoming](./70_13_homecoming.md) zu einem eigenen Song geworden waren, mussten neuen Lyrics her. Da mich der Track an das Reisen und Selbsttransformation erinnerte, beschloss ich, ihn "Journey" zu nennen und die Lyrics entsprechend zu wählen - zudem wollte ich einen Aspekt einbringen, der mir für die Arbeit mit KI zentral erschien: man kann das Ziel definieren, aber das Ziel wird nie genauso aussehen, wie geplant, sondern anders, wenn auch vertraut, das Wesen der Probalistik eben.
Strukturell entschied ich mich für je 2 heroic couples (Paarreime im Pentameter), weil sie die verfügbaren Zeitslots gut ausfüllen würden. Zunächst probierte ich es wieder einmal mit John Keats, aber das Ergebnis gefiel mir nicht. Es wirkte irgendwie blutleer. Für so eine kurze Textmenge, brauchte ich ein maximal verdichtetes Bild. Schließlich entschied ich mich für:
Wir schreiben englische Lyrics.
Struktur: Pentameter, 2 eigenständige Blöcke, die jeweils aus einem heroic couple bestehen.
Thema: das Reisen als Prozess. Stell dir vor, du bist der Wanderer über dem Nebelmeer in Caspar David Friedrichs gleichnamigem Gemälde, nur dass du durch den Canadian Golden Fall wanderst (nenne Canada nicht beim Namen). Im ersten Versblock weiß du, dass du einen Berg erklimmen wirst, du weißt welcher Gipfel, aber du weißt nicht nicht, wie du dorthin gelangst. Im 2. Block folgt die Erkenntnis, dass du den Gipfel erreicht hast, aber es dort ganz anders aussieht, als erwartet. Du hast du unbekannten, bekannten Gipfel erklommen.

<details>
<summary><b>AI Draft</b><br/><br/></summary>

**Block I: Trajectory**

> The chosen summit cuts the fading sky,
> Through seas of golden maple, blind am I.

**Block II: Arrival**

> I breach the fog to tread the destined stone;
> This summit, long familiar, stands unknown.
</details>

Der resultierende Entwurf ist der finalen Umsetzung sehr nahe (wenig überraschend bei 4 Zeilen). Ich habe aber die Wortwahl geändert und das Ende anders aufgelöst. Es war das einzige mal, dass ich mit klassischem Persona-Prompting ("Du bist ...") gearbeitet habe. An dieser Stell erschien mir das sinnvoll, weil ich wollte, dass die KI in die Rolle der Figur schlüpft.

## Postproduction

Da ich eine Rezitation ohne jede Instrumentation brauchte, ahnte ich angesichts meiner Erfahrungen mit jobs bereits, dass es nicht ganz einfach werden würde, das von Lyria rendern zu lassen. Ich habe es bestimmt zehnmal versucht, davon waren die meisten gesungen. Von den wenigen gesprochenen war nur eines gut, wenn auch etwas pathetisch. Zudem war es sehr “heiß” gefahren. Die S-Laute zischelten furchtbar. Das unangenehme Kratzen und Klirren konnte ich entfernen, aber natürlich konnte ich die Artikulation als solche nicht ändern. Ein De-Esser hätte die Stimme unweigerlich dumpfer gemacht und das Zischen auch nur verschmiert.
Am Ende habe ich die Rezitation in Segmente zerlegt und so platziert, dass die betonte erste Silbe von "destined" mit dem ersten Beat des Gitarrenwechsels zusammenfällt. Dadurch wirkt es wie ein gezielter Duck - wenn man einen *Fehler* nicht sauber kaschieren kann, muss man ihn zum bewussten Stilmittel machen.

## Related Files

### Artifacts

```text
File:                  ai-artifacts/journey_1.mp3

Duration:              02:47.26
Sample Rate:           44100 Hz
Total Samples:         7376254

Integrated Loudness:   -12.6 LUFS
True Peak:             0.1 dBTP
Max Short-Term:        -9.1 LUFS
Loudness Range (LDR):  5.6 LU
Peak-Loudness (PLR):   12.70 dB

SHA-256 Audio Hash:    3bb8f1d6eadf2e79f3f77dc1b3a17758974b870b3d095f8d954151947fc83b1b
```

```text
File:                  ai-artifacts/journey_2.mp3

Duration:              00:27.64
Sample Rate:           44100 Hz
Total Samples:         1218814

Integrated Loudness:   -8.9 LUFS
True Peak:             2.5 dBTP
Max Short-Term:        -7.7 LUFS
Loudness Range (LDR):  8.0 LU
Peak-Loudness (PLR):   11.40 dB

SHA-256 Audio Hash:    7461812e9e8e6baf1387b3d3943abf3dde56ba6a6594fc568be78ebeb8153576
```

### Master

```text
File:                  masters/12_Journey.wav

Duration:              02:51.50
Sample Rate:           44100 Hz
Total Samples:         7563139

Integrated Loudness:   -13.9 LUFS
True Peak:             -1.9 dBTP
Max Short-Term:        -11.4 LUFS
Loudness Range (LDR):  4.6 LU
Peak-Loudness (PLR):   12.00 dB

SHA-256 Audio Hash:    b407d4acc3986e1d2adb2deb5f961f473f561d50dbb6a358f6e971354e45b395
```

<!-- END FILE: 70_12_journey.md -->

---

<!-- BEGIN FILE: 70_13_homecoming.md -->

# 13 - Homecoming

**ISRC:** `QT6FZ2609881`

Der Phantomschmerz einer Erinnerung an die Zukunft.

## Instruction

```markdown
### Setup
Wir wollen einen 3-Minuten-Musik-Track genieren. Die Lyrics findest du weiter unter. Wir bewegen uns im Bereich Indie-Folk-Pop, Chamber-Folk. Ein Weibliche, ultra nahmikrofonierte Stimme (Close-Miking, ASMR-Quality, jede Atempause hörbar) **spricht** den gesamten Text, während Akkustikguitarre, Feltpiano, Cello und Violine für die Stimmung sorgen.
Wichtig: die Erzählung steht im Mittelpunkt. Sie darf nicht durch Auslassung, Umstellung oder Verdoppelung gestört werden. Die weibliche Stimme muss langsam sprechen, fast flüstern intim ins Ohr des Hörers flüstern. Ihre Stimme ist geprägt von leiser Melancholie, hat aber eine gewisse Beiläufigkeit und Natürlichkeit. Es soll wirken, als würde sie einer guten Freundin bei einer Tasse Tee aus dem Fenster blickend von ihrem Zuhause aus Kindertagen erzählen. Da ist keine Bedrohlichkeit, nur Faszination und Sehnsucht. 

### Progression:
* Wir streben einen langsamen Beat, vielleicht 74 BPM an. Steig mit 4 Takten instrumental ein, damit Lyra eine stabile Spur findet.
* Wir steigen mit Gitarren-Fingerpicking ein. Bei den Maples und cedars brauchen wir ein paar Cello-Drones, die sich nach der Schaukel aber wieder zurückziehen. Beim C Minor könnte noch einmal das Cello zu hören sein (langezogen), anschließend steigt das Klavier ein.
* Verse 2 darf und soll kraftvoller werden, weil wir das "Auf und Ab" der Sehnsucht einfangen wollen, wir dürfen aber nicht in Hektik verfallen. Das Lyrische Ich ist kein Opfer, sondern Beobachter 
* Verse 3 muss die Erkenntnis, die mit den ersten beiden Versen, bricht musikalisch einfangen. Vielleicht durch eine klagende Geige. Bei "It's a cozy kind of haunting, isn't it?" - vielleicht sogar mit einer gewissen Selbstironie gesprochen, so als würde man aus schweren Gedanken hochschrecken und sich für den eigenen Pathos entschuldigen wollen - verblassen die Instrumente. Die letzten Zeilen sind in Stille (oder nur leichte Cellodrones)  gesprochen.

### Lyrics
#### Verse 1
The maples have begun their slow, golden self-immolation against the burning sky.
A wall of damp cedar breathes out an aeon of forgotten winters.
The swing sways the way it always does when the evening is about to fall.
The patinated latch of the screen door still catches just the way... I remember...
I know the precise note—a dry C minor—that the second floorboard creaks when a soul enters the kitchen,
where the scent of woodsmoke and old wool settles deep into the grain.

#### Verse 2
Beyond the orchard, the dirt lane dissolves into the reach of the dark woods,
where the river runs thick with silt and suddenly tastes of the oncoming sea.
Look how the water crests, turning on itself, rushing violently backward into the gorge,
rewinding its own destiny because the tide demands a different allegiance.
That is the exact physics of my own blood when autumn's whisper sharpens—
a pulling inward and upward, against the current of my longing.

#### Verse 3
And here it is... the fracture, the strange frost in the fragile marrow of my yearning bone:
I have never smelled the memories of these trees; my boots have never pressed this moss... still untouched.
No man-made map knows this jagged shoreline where the water feasts on the land.
I am a ghost haunting a home I have never been allowed to call my own. ...
It's a cozy kind of haunting, isn't it? ...
I dream of the day when I finally pass the bleached threshold
welcomed by a self I have yet to meet.
```
## Track Liner Notes

Homecoming folgte produktionstechnisch direkt auf [Jobs](./70_04_jobs.md) und greift das Motiv des sehnsüchtig imaginierten cottages auf, aber aus einer völlig anderen Perspektive. Wo jobs tief im Alltag und klischeeartigen Sehnsüchten (“cottage in the pines”) verwurzelt ist, wagt sich Homecoming in andere Gefilde vor.
Der KI habe ich das Vorhaben so beschrieben: 
Neues Lyrics-Projekt. Ich möchte einen Instrumentaltrack nachträglich mit einer Rezitation versehen, wie es im Indie-Folk üblich ist. Dafür lassen wir John Keats und Taylor Swift über Anemoia schreiben. Keats liefert die Basis und Swift sorgt dafür, dass das Ganze intim und für moderne Menschen greifbar wird. Wir peilen erst einmal 3 Verses mit je 6 Lines ein, wobei wir wie bei solchen Rezitationen keinen Reim und kein festes Reimschema anstreben. Es ist ein ins Ihr geflüsterter Gedankenfluss.
Konkret greifen wir die Anemoia als ein "Homecoming" an einen Ort, den man noch nie mit eigenen Augen gesehen hat, aber nach dem man sich geradezu phyisch sehnt. Wir verorten es im kanadischen Golden Fall irgendwo im Osten zwischen Wald, Fluss und Meer. Wir steigen ein mit der Beschreibung des Hauses oder der vertauten Straßen/Bäume und weiten dann den Blick in die Landschaft und ins eigene Herz. Hier könnten wir das Motiv der Reverse Falls aufgreifen, ein Fluss der rückwärts fließt. Die Erkenntnis, das das Lyrische ich diesen Ort noch nie real gesehen hat, heben wir uns für den letzten Verse auf. So entsteht eine Dissonanz aus maximaler Vertrautheit und Ferne.

Constraints:
Vermeide konkrete georgrafische Begriffe wie Kanada, Reverse Falls oder Atlantik, arbeite stattdessen den Charakter heraus

<details>
<summary><b>AI Draft</b><br/><br/></summary>

**Verse 1**
The rusted latch of the screen door still catches just the way I remember.
On the porch, the damp cedar breathes out a century of quiet winters,
and the maples have begun their slow, golden self-immolation against the grey.
I know the precise angle of the shadow that falls across the kitchen floor at four,
where the scent of woodsmoke and old wool settles deep into the grain.
It is the smallest, most specific architecture of belonging, heavy and warm.
**Verse 2**
Beyond the orchard, the dirt lane dissolves into the reach of the dark woods,
where the river runs thick with silt and suddenly tastes of the oncoming sea.
Look how the water crests, turning on itself, rushing violently backward into the gorge,
reversing its own destiny because the tide demands a different allegiance.
That is the exact physics of my own blood when the autumn wind sharpens—
a pulling inward and upward, against the current of my actual days.
**Verse 3**
And here is the fracture, the strange frost in the center of the marrow:
I have never stood beneath these trees; my boots have never pressed this moss.
Every map I own is blank where this jagged shoreline meets the water.
I am a ghost haunting a home I have never been permitted to inherit,
homesick for a porch light that was never legally turned on for me,
marooned in the terrible, aching intimacy of a place I have never seen.
</details>

Bereits dieser erste Entwurf war richtig stark, vor allem Verse 2 hat es fast unverändert auf das Album geschafft. Das omnipräsente “porch” hat mich aber genauso gestört, wie die Blickrichtung in Verse 1. Es beginnt mit der Screendoor, wechselt dann zur Außenansicht und ist dann wieder im Inneren, das wirkte Unnatürlich, zudem wollte ich etwas mehr Keatschen Pathos, weswegen ich die finalen ersten beiden Zeilen deutlich romantizistischer ausgearbeitet habe. Verse 3 hat schließlich ein paar Details und vor allem sein “it's a cozy kind of haunting, isn't it?” und den Blick auf die Zukunft bekommen.
Die Lyrics gefielen mir sehr, passten aber nicht zum späteren [Journey](./70_12_journey.md), weswegen ich anders als ursprünglich angedacht, eine eigenständige Vertonung beschloss. Die erste Iteration hatten Zeilendreher und war damit kaputt. Die zweite Generierung hat mich dann umgehauen: diese Mischung aus Spoken Word und dem ständigen Abgleiten in eine gesangliche Performance, so als wäre Singen die einzige Form, dem Text den Ausdruck zu verleihen, den es verdient hatte, berührte mich. Dieser Track musste unbedingt aufs Album.

Ich möchte nicht unerwähnt lassen, dass ich für diesen Track, mein Setup einem kleinen Blindtest unterzogen habe. Bevor ich den obigen Entwurf wie beschrieben angefordert habe, habe ich es zuvor in einer temporären Session (ohne mein Profil) ausprobiert:

<details>
<summary><b>AI Draft</b><br/><br/></summary>

## Rezitation: "The Unmapped Latitude"

### Teil 1: Die geerdete Intimität (0:00 – 0:30)

*(Über das intime Gitarren-Zupfmuster. Die Stimme sollte nah, leise und fast geflüstert sein.)*

> "There is a porch swing I have never sat on,
> creaking under a sky I’ve only memorized from dreams.
> I know the smell of the pine before the rain hits,
> and the way the floorboards would feel beneath my bare feet.
> It’s a specific kind of haunting, isn't it?
> Leaving tire tracks on a road I’ve never driven,
> looking for a porch light that was never left on for me."

### Teil 2: Der mythische Aufbruch (0:30 – 1:10)

*(Die Chöre setzen ein, der Raum öffnet sich. Die Sprache wird größer, epischer – hier blickt John Keats durch das Fenster.)*

> "But beneath the quiet timber of this longing,
> an ancient architecture wakes.
> Like Saturn in his shaded vale, bowed by the weight of unremembered empires,
> my soul remembers a grander roof.
> Not made of wood or stone, but of forgotten stars
> and colossal boughs that whispered before the first man spoke.
> It is a grief too heavy for the mortal chest,
> yet it sits so lightly on my shoulders."

### Teil 3: Das emotionale Breitwandkino (1:10 – 1:50)

*(Der Höhepunkt des Songs. Streicher, Synths und Percussion verschmelzen. Die Stimme wird dringlicher, rhythmischer – die Fusion aus beiden Welten.)*

> "We are all exiles from a kingdom we cannot name.
> I carry this ache like a family heirloom,
> passed down through bloodlines of ghosts.
> It is the titan’s fury wrapped in a faded cardigan.
> A cosmic homesickness, loud as a dying sun,
> yet quiet as salt air on a screen door.
> I am homesick for a coordinates I cannot find on any map."

### Teil 4: Das friedliche Ankommen (1:50 – Ende)

*(Die Musik ebbt ab, die Welle zieht sich zurück. Nur die Gitarre und das leise Humming bleiben übrig. Die Stimme atmet auf.)*

> "So I close my eyes and let the music build the walls.
> I am finally there.
> At the threshold of a home that does not exist...
> welcomed by a self I have yet to meet."
</details>

Nun was soll ich sagen? “It is the titan’s fury wrapped in a faded cardigan” Saturn trägt Strickjacke …  
Das ist genau dieses collageartige Zusammenkleben von Sachen, die nicht zusammengehören, wie man sie von der KI gemeinhin erwartet. Von Keats kommt der Titan und von Swift der Cardigan. Statt die Stile der beiden zu verschmelzen, werden einfach ikonische Worte zusammengewürfelt. Heraus kommt etwas mit Unterhaltungswert, aber gewiss nichts, was mir gefallen hätte. Gleichwohl habe ich ein paar Motive für die Überarbeitung des gelungenen Entwurfs adaptiert.

## Postproduction

Das finale KI-Artefakt war in Sachen Lyrics und Instrumentation makellos, kämpfte aber massiv mit Clicks und scharfem Klirren in den Obertönen. Das war kein Clipping, das aus einem zu aggressiven Limiting resultiert hätte (es gab keine abgeschnittenen Plateaus in der Wellenform), sondern wurde von Lyria gezielt so gerendert. Vor allem die Fortissimo-Klavieranschläge und die sehr energetischen Parts sind betroffen. Das Modell hat das “crushing violently” in den Lyrics hier auf die Musik übertragen. Das verzerrte Klirren bei “ghost” in Verse 3 ginge sogar als Stilmittel durch. Die Clicks waren auf meinen Magnetostaten aber so dermaßen unangenehm, dass ich sie mit Airwindows DeCrackle glattgezogen habe. Zudem habe ich im Zuge des Masterings den Atemzug ganz am Ende hinzugefügt (den hatte ich aus [Artifact](./Artifact.md) entfernt, weil er dort nicht gepasst hatte)


## Related Files

### Artifacts

```text
File:                  ai-artifacts/homecoming.mp3

Duration:              02:54.08
Sample Rate:           44100 Hz
Total Samples:         7676926

Integrated Loudness:   -11.4 LUFS
True Peak:             0.2 dBTP
Max Short-Term:        -7.3 LUFS
Loudness Range (LDR):  9.0 LU
Peak-Loudness (PLR):   11.60 dB

SHA-256 Audio Hash:    5703e461c7dbdb4b49d7f2b8ec55f02a1d58e84fc47ebc919d3253238f26634b
```

### Master

```text
File:                  masters/13_Homecoming.wav

Duration:              02:58.00
Sample Rate:           44100 Hz
Total Samples:         7849800

Integrated Loudness:   -13.9 LUFS
True Peak:             -2.0 dBTP
Max Short-Term:        -10.8 LUFS
Loudness Range (LDR):  7.5 LU
Peak-Loudness (PLR):   11.90 dB

SHA-256 Audio Hash:    5aee41092801ec4a0b0a36ededacd8fbff098ced1943370f12dd02b6e32c7de5
```

<!-- END FILE: 70_13_homecoming.md -->

---

<!-- BEGIN FILE: 71_00_outtakes.md -->

# Outtakes

Ich habe deutlich mehr Tracks in unterschiedlichen Stadien verworfen, als ich hier dokumentiere. Das hier ist also keine erschöpfende Auflistung und erst recht kein *secret Vault*. Vielmehr habe ich zwei Tracks herausgegriffen, die ich aus zwei Gründen für das bessere Verständnis der Genese als essentiell erachte:
1) excellence: der Song dokumentiert eine frühe thematische Stoßrichtung des Albums, die ich verworfen habe
2) masks: ein gescheiterter Entwurf, der aber mehrere andere Songs darunter vor allem Jobs inspiriert hat

<!-- END FILE: 71_00_outtakes.md -->

---

<!-- BEGIN FILE: 71_01_excellence.md -->

# Excellence (outtake)

In einer Zeit, in der der Durchschnitt praktisch kostenlos verfügbar ist, wird Exzellenz zur letzten Rechtfertigung.

## Instruction

```markdown
# Excellence

## arrangement

**Stil:** Indie-Folk-Pop, Chamber-Folk
**Voice:** female, close-miking, breathy, ASMR-Quality, intimate 

Basis ist das Felt Piano und ein treibender Beat.

Wichtig: die Lyrics erzählen eine Geschichte und dürfen auf keinen Fall durch Auslassung, Umstellung oder Verdoppelung verändert werden. Versuch die 3 Minuten durch Istrumental-Einsatz auszureizen.

## Lyrics

### Verse 1
I’m polishing the silver till it starts to bleed
A quiet kind of hunger, a desperate sort of greed.
'cause good is never good enough, they want the sublime.
Either you're outstanding or you're a tired rhyme.
So I keep blooming desperately, afraid of being torn,
Pretending I'm the ornament upon their perfect lawn

​### Chorus 1
And I’m excellent by demand ...
Holding lightning in a trembling hand ...
If I don't give them fever, 
If I don't give them fire,
They’ll find a newer statue,
To hoist upon the spire.
​
### Verse 2
It’s a clever bit of stitching, a needle in the dark.
I’m tracing over blueprints, trying to find a spark.
They want the innovation, the radical, the new.
But I’m just rearranging the shades of grey and blue.
I’ll give them what they recognize, but call it a surprise.
I’m hiding all the echoes behind my hollow eyes.
​
### Chorus 2
Yeah, I’m excellent by demand ...
Building monuments on shifting sand ...
If I don't give them genius, 
If I don't give them grace,
There’s a thousand different versions,
Waiting to take my place.
​
### Bridge
And nobody knows the formula, they just know the taste,
The difference between a diamond and a polished piece of paste.
They want divine invention, the lightning in the bone.
But I’m just a hired hand, working all alone.
And the street is getting louder, I can hear the engine hum.
If I stop the revolution, I know what I’ll become:

### Spoken Word
Just another piece of history they’ve already outrun.
​
### Outro
Excellent by demand...
(I’m just a pattern they haven’t recognized yet)
Excellent by demand...
(Don’t let them see the thread, don’t let them see the sweat)
Just keep it shiny. Just keep it strange.
Or they’ll find someone else to arrange.
Mmm…
```

## Track Liner Notes

Dieser Song hat es nicht aufs Album geschafft, auch wenn er lange sicher gesetzt war. Es war der zweite Song (nach "[Hollow](./70_01_hollow.md)"). Adressieren wollte ich den Umstand, dass in Zeiten von KI der Durschnitt praktisch instant vorhanden ist, womit Exzellenz (sei es in Form von Qualität oder Innovation) obligatorisch wird, um nicht ersetzt zu werden. 
Der KI habe ich für die Lyrics folgende Vorgaben gemacht:
* das lyrische Ich ist zum Erfolg verdammt. Es ist "excellent by demand". Wenn es nicht liefert, setzt man es auf die Straße
* in einer Welt, in der Durschnitt wertlos und jederzeit zu haben ist, ist Exzellenz die einzige harte Währung
* Niemand weiß so richtig, was diese Exzellenz eigentlich ist, aber reines Handwerk reicht nicht, es muss genial und innovativ sein
* triff den Geschmack der Menge, liefere, was sie wollen, aber sie dürfen nicht merken, dass alles schon einmal da war

<details>
<summary><b>AI Draft</b><br/><br/></summary>

**Excellence**  

**(Verse 1)**  
I’m polishing the silver till it starts to bleed  
A quiet kind of hunger, a desperate sort of greed  
They say the dirt is plenty, it’s growing in the cracks  
But they don’t want the garden, they just want the axe  
To swing at every shadow that isn’t painted gold  
I’m selling off the secrets that I haven’t even told.  

**(Chorus)**  
And I’m **excellent by demand**  
Holding lightning in a trembling hand  
In a world of copper coins, I’m the only currency  
But the mint is running dry, and the ghost is haunting me  
If I don't give them fever, if I don't give them fire  
They’ll find a newer statue to hoist upon the spire.  

**(Verse 2)**  
It’s a clever bit of stitching, a needle in the dark  
I’m tracing over blueprints, trying to find a spark  
They want the "never-before-seen", the radical, the new  
But I’m just rearranging the shades of grey and blue  
I’ll give them what they recognize, but call it a surprise  
I’m hiding all the echoes behind my hollow eyes.  

**(Chorus)**
'Cause I’m **excellent by demand**  
Building empires on shifting sand  
In a world of common clay, I’m the only hard-won prize  
But they’re waiting for the moment the luster starts to die  
If I don't give them genius, if I don't give them grace  
There’s a thousand different versions waiting for my place.  

**(Bridge)**  
(Tempo wird langsamer, Piano-betont)  
And nobody knows the formula, they just know the taste  
The difference between a diamond and a polished waste  
They want the divine intervention, the lightning in the bone  
But I’m just a girl in a workshop, working all alone  
And the street is getting louder, I can hear the engine hum  
If I stop the revolution, I know what I’ll become:  
Just another piece of history they’ve already outrun.  

**(Outro)**  
Excellent by demand...  
(I’m just a pattern they haven’t recognized yet)  
Excellent by demand...  
(Don’t let them see the thread, don’t let them see the sweat)  
Just keep it shiny.  
Just keep it strange.  
Or they’ll find someone else  
To arrange.  

</details>

Die KI reagierte mit einem Entwurf, der mir spontan gefiel und den ich direkt zur Generierung gegeben habe. Bereits die zweite Iteration hatte einen grandiosen Vibe: ein Intro mit Piano Vamping, das an Lemontree erinnerte, und einen sehr fordernden Beat, der in die Füße ging.

Die Ironie an diesem Entwurf war, dass er von Gemini 3.0 Flash stammte, welches wenige Wochen später durch das neue 3.5 ersetzt wurde. Das Modell hat (unwissentlich) sein eigenes Requiem geschrieben - eigentlich perfekt für das Thema meines Albums.
Mit etwas Abstand fielen mir aber die Ecken und Kanten an den Lyrics auf (“in a world of copper coins I'm the only currency” - ernsthaft? Da hat das Context Bleeding meines Profils hart zugeschlagen). Also habe ich sie überarbeitet, auch weil ich keine rein KI-generierten Texte ohne menschliche Nacharbeit auf dem Album haben wollte. Das Ergebnis ist in der finalen Instruktion zu finden.

Die Versuche, mit diesen Lyrics wieder die Ästhetik des so gefälligen Tracks zu treffen, scheiterten jedoch (was fast klar war - man bekommt nie zweimal die gleichen Lottozahlen). Nach 5 Iterationen habe ich aufgegeben. Zudem wurde mir bewusst, dass der Track zu direkt und extrovertiert ist. Es gibt keine Innensicht und keine Erzählung. Es ist nur ein Klagen über den Status Quo. Daher habe ich diesen Song ersatzlos gestrichen, auch weil die klangliche Ästhetik zu sehr nach Broadway und großer Bühne klang.

<!-- END FILE: 71_01_excellence.md -->

---

<!-- BEGIN FILE: 71_02_masks.md -->

# Masks (outtake)

Wir alle tragen unsere "Masken", wenn wir im Alltag in die verschiedenen Rollen schlüpfen, die wir spielen müssen (und oft auch wollen).

## Instruction

```markdown
# Masks

## Setup
**GENRE & VIBE** 
Atmospheric Organic Folk, Hushed Chamber-Pop. 
* Theme: Stoic Resignation and Soft Inevitability. 
* Mood: Intimate, "dusty," bittersweet, cosy, like a quiet room at dawn. 
* Texture: Warm, pillowy, blurred edges. 
* Tempo: 76 BPM (fluid but persistent).

**CORE INSTRUMENTATION**

* **Primary:** Soft-pedal upright piano (una corda), notes bleeding into each other like watercolors. Gentle, circular fingerpicked acoustic guitar (warm wood tone).
* **Secondary:** Hushed, legato cello pads (playing long, sighing notes). No staccato.
* **Textural:** Subtle ambient hiss (like an old tape or distant rain), "dusty" high-end frequencies. The rhythm is a soft, thumping "heartbeat" felt more than heard.

**VOCAL ARCHITECTURE**
Ultra-intimate female vocals, sung in a "hushed whisper" style. Breathwork is essential. The delivery is not dramatic, but stoisch and calm, as if singing to oneself in a mirror. No vocal layering except for subtle, ghostly unisons in the bridge.

## ARRANGEMENT & LYRICS
IMPORTANT NOTE: Pay close attention to ensuring that the lyrics are followed exactly.

### INTRO
[Spoken, annoyed]
(He needs the list, now!)

### VERSE 1
[The piano enters like a slow tide. Everything is soft-edged. The "inevitable" feeling comes from a repetitive, circular 3/4 or 6/8 sway.]
The floorboards groan before the sun dares to wake.
There’s a silence in the hallway that's bound to break.
I reach for the drawer, the second from the right
Where the versions of me wait for the light.
Like silk scarves and cardigans, ironed and neat.
A collection of masks, growing like weed.
I pick the one with the smile and the eyes without sin.
And I pull it tight until it’s fastened to my skin.

### CHORUS
And it’s a brilliant disguise, I'm a model of grace.
I’m the gold-leafed icon with the ever-smiling face.
They don’t want the marrow, they just want the bone.
They want the comfort of a house they’ll never own.
Well, I’m stanching the bleed - performing the task
Inscrutable behind the mask.

### VERSE 2
[Cello swells very gently in the background. The music feels like a warm blanket that is becoming slightly too heavy.]
They walk right past the orchards where the real fruits grow.
They only love the perfect lawn, the curated show.
I’ve forgotten how to breathe without a filter in the way.
I’m a different kind of vessel every single day.
One for the boardrooms, one for the tea,
One for the person who used to know me.
I play the part, I provide the light
While the real me starves in the dead of night.

### PRE-BRIDGE
[Instrumentation washes out into a dreamy haze. The lines are like annoying intrusive thoughts.]
(He needs a birthday present for his wife)
(something expensive, something that looks like he cares)
 
### BRIDGE
[Instead of getting louder, the arrangement gets *denser*. More strings, more piano layers, all melting together. It’s a "soft explosion" of sadness. The "shattered glass" is represented by high, delicate piano sparkles, not harsh percussion.]
I saw myself in the silvered glass, I didn't know the eyes.
I tried to find the girl beneath the compromise.
I clenched my hand into a fist with all my might
To shatter the reflection, to kill the haunting sight.
But the shards fell on the carpet like a thousand tiny knives
And every jagged piece of glass led a thousand different lives
And in every single splinter, in the wreckage on the floor
The mask was looking back at me, more perfect than before.

### CHORUS
Yeah, it’s a brilliant disguise, I'm a model of grace.
I’m the gold-leafed icon with the ever-smiling face.
They don’t want the marrow, they just want the bone.
They want the comfort of a house they’ll never own.
Yeah, I’m stanching the bleed - performing the task
Irrelevant behind the mask.

### OUTRO
[Instrumentation slowly fades into the ambient hiss. Spoken lines]
The list is done.
The gift is wrapped... 
and I’m still here...
[melodic synth-sparkle that vanishes instantly] 
Am I? 
[Sighing] 
Man, I need another Job...
```

## Track Liner Notes

Die Idee zu Masks kam mir direkt nach Hallow, ich habe mich aber erst an "[Excellence](./71_01_excellence.md)" versucht, bevor ich mich diesem gewidmet habe. Es ist also Track Nummer 3, auch wenn er es in dieser Form nicht auf das Album geschafft hat.

Die titelgebenden Masken waren also Metapher für die Rollen, die wir im Alltag spielen müssen (und wollen), angelegt. Zuweilen machen wir uns diese Masken derart zu eigen, dass wir sie gar nicht mehr ablegen können.
Die Vorgaben für die KI waren:
* das lyrische Ich muss jeden Tag in verschiedene Rollen schlüpfen, um die Anforderungen seines Umfelds zu erfüllen. Es legt diese Rollen wie Masken an und trägt sie stoisch und ohne zu klagen oder ihr wahres Ich durchblitzen zu lassen.
* jede Morgen geht sie zu ihrer Kommode im Schlafzimmer und öffnet die Schublade, wo die Masken wie Kleidungsstücke sorgfältig nebeneinander aufgereiht liegen.
* die Menschen interessiert nicht, wer sie wirklich ist, sie wollen sie in dieser speziellen Rolle. 
* Das Lyrische Ich blickt in den Spiegel und weiß selbst nicht mehr, wer sie eigentlich aus. Selbst wenn sie den Spiegel zerschlagen würde, würde sie doch in den Scherben nur tausendfach die Maske sehen, sie müsste die Maske absetzen, aber sie ist untrennbar mit ihr verbunden.
* die Maske schützt, die Maske macht es einfach zu brillieren, aber sie ist auch ein Gefängnis und ein Zwang, jemand zu sein, der man nicht ist.
* das Intro vor dem ersten Verse sollte das Piepen eines Anrufsbeantworters sein. Eine vom Telefon verzerrte männliche Stimme sagt nur "wir brauchen die Liste asap. Beeil dich!" (Ohne Anrede)
* vor der Bridge könnten weitere Anrufe folgen "Was schenke ich meiner Freundin?", "Wir brauchen die Übersetzung"

<details>
<summary><b>AI Draft</b><br/><br/></summary>

**Masks**  

**(Intro)**  
*(Das mechanische, hohe Piepen eines Anrufsbeantworters. Die Stimme ist leicht verzerrt, ungeduldig, ohne jede Wärme.)*  
**Male Voice:** "We need the list ASAP. Hurry up!"  
*(Ein sanftes, gezupftes Akustikgitarren-Motiv setzt ein, begleitet von einem dezenten, halligen Klavier.)*  

**(Verse 1)**  
The floorboards groan before the sun dares to wake  
There’s a silence in the hallway that I’m not allowed to break  
I reach for the mahogany, the second drawer down  
Where the versions of the woman I’ve become are laid out  
Like silk scarves and winter coats, ironed and neat  
A collection of the victories and every quiet defeat  
I pick the one with the steady hand and the porcelain chin  
And I pull it tight until it’s fastened to my skin.  

**(Chorus)**  
And it’s a brilliant disguise, a masterclass in grace  
I’m the gold-leafed icon with the hollowed-out face  
They don’t want the marrow, they just want the bone  
They want the architecture of a house they’ll never own  
It’s my armor in the garden, it’s my cage in the light  
I’m shining so bright that I’m losing my sight  
And I’m stanching the bleed, performing the task  
Wrapped in the safety of the mask.  

**(Verse 2)**  
They walk right past the garden where the real weeds grow  
They only love the topiary, the curated show  
I’ve forgotten how to breathe without a filter in the way  
I’m a different kind of currency every single day  
One for the boardrooms, one for the tea  
One for the person who used to know me  
But she’s buried under layers of a thousand "yes" and "please"  
Doing penance for a ghost on her calloused knees.  

**(Chorus)**  
‘Cause it’s a brilliant disguise, a masterclass in grace  
I’m the gold-leafed icon with the hollowed-out face  
They don’t want the marrow, they just want the bone  
They want the architecture of a house they’ll never own  
It’s my armor in the garden, it’s my cage in the light  
I’m shining so bright that I’m losing my sight  
And I’m stanching the bleed, performing the task  
Wrapped in the safety of the mask.  

**(Pre-Bridge)**  
*(Die Musik wird leiser, nur ein pulsierender Bass-Ton bleibt. Mehrere überlagerte Telefon-Stimmen drängen sich in den Vordergrund.)*  
**Voice 1:** "Hey, what do I get my girlfriend for her birthday?"  
**Voice 2:** "We need the translation by five. Don't forget the footnotes."  
**Voice 1 (im Hintergrund):** "Something expensive. Something that looks like I care."  

**(Bridge)**  
*(Die Instrumentierung schwillt an – drängender, fast schon klaustrophobisch.)*  
I stood before the silvered glass and I didn't know the eyes  
I tried to find the girl I was before the compromise  
I took a heavy stone and I swung with all my might  
To shatter the reflection, to kill the haunting sight  
But the shards fell on the carpet like a thousand tiny knives  
And every jagged piece of glass led a thousand different lives  
And in every single splinter, in the wreckage on the floor  
The mask was looking back at me, more perfect than before  
You can’t break what’s become you, you can’t peel back the years  
When the adhesive is the salt of all your unspent tears.  

**(Guitar Solo)**  
*(Ein melancholisches, klagendes Solo, das in eine sanftere Reprise übergeht.)*  

**(Chorus)**  
Yeah, it’s a brilliant disguise, a masterclass in grace  
I’m the gold-leafed icon with the hollowed-out face  
They don’t want the marrow, they just want the bone  
They want the architecture of a house they’ll never own  
It’s my armor in the garden, it’s my cage in the light  
I’m shining so bright that I’m losing my sight  
And I’m stanching the bleed, performing the task  
I’m living my life in the safety of the mask.  

**(Outro)**  
*(Das Klavier übernimmt wieder das Anfangsmotiv, wird immer langsamer.)*  
The list is done.  
The translation is on the desk.  
The gift is wrapped in gold and blue.  
And I’m still here...  
Or what’s left of me is.  
*(Ein leises Klicken, wie ein Lichtschalter.)*  
Tomorrow, I’ll choose the blue one.  
It fits better in the light.  
*(Verhallt in Stille)*  
</details>

Die resultierende Entwurf hatte etwas “Barockes” in seiner Bildsprache und auch ein paar Eigenheiten (sei es das Bild des Gartens, ein Artefakt meines Profils - oder die Fehlinterpretation der Maske als Atemmaske in Verse 2). Ich habe den Entwurf wie immer eingedampft, entschlackt und umgestellt.

Das “Barocke” konnte ich dem Track aber nicht nehmen, wenig überraschend fiel auch der Sound merkwürdig verschnörkelt aus. Es matchte einfach nicht. Schon wie bei [Excellence](./excellence.md) drohte das Projekt eine klangliche Ästhetik zu entwickeln, die ich so nicht intendiert hatte. Ich traf die einzig folgerichtige Entscheidung, verwarf den Song und unterzog ihn einem gnadenlosen Refactoring. Das Ergebnis schaffte es als [Jobs](./70_04_jobs.md) auf das Album. 

<!-- END FILE: 71_02_masks.md -->

---

<!-- BEGIN FILE: 80_cover-art.md -->

# Cover Art

Dass auch das Cover dieses Albums KI-generiert sein würde, war von Beginn an klar, aber auch, dass ich viel Zeit in die Nachbearbeitung stecken würde - nicht nur, um die menschliche Leistung einzubringen, sondern weil Bildbearbeitung und Fotografie zu meinen ältesten Hobbies gehören. 
Die größte Herausforderung bestand in der bewussten Inszenierung des uncanny-valley-Effekts: typische Details wie das Collagen-artige Arrangieren der Requisiten im Bild sollten die KI-Natur offenbaren, gleichzeitig sollte die Gesamtkomposition und die Detailverliebtheit jeden Anschein von Beliebigkeit verhindern - und tatsächlich gibt es kein Detail im Bild, das nicht eine Funktion erfüllen würde. Das wirkt vielleicht verkopft, manieristisch und überkonstruiert - aber für eine KI gibt es auch nur Semantik: auf einem echten Foto ist ein Blumenstrauß einfach nur ein Blumenstrauß. In einem KI-generierten Bild war es entweder ein gefordertes Detail oder ein von der KI aufgrund der Wahrscheinlichkeit ergänzter Vektor, es gibt nichts, was ohne Grund da wäre (auch wenn sich uns dieser Grund nicht immer erschließt).

## Der prismatische Vektorraum
Das Bild suggeriert eine Trennung in einen “realen” Raum und neun bzw. acht Bilder, die sequentiell einzelne Szenen aus dem Leben des Lyrischen Ichs erzählen. Einzelne Requisiten wie die Autoschlüssel oder der Bleistift setzen dieses “persönliche Museum” fort. Bezogen auf den Storybogen des Albums mag man in dem Motiv das Ankommen in dem erträumten “Zuhause” erkennen.
Das ist aber nur die Oberfläche. Wenn man sich vergegenwärtig, dass alles KI-generiert ist (also auch der Raum und die Natursteinwand) kollabiert die Trennung zwischen den Ebenen und genau wie die Narration im Kern prismatisch aufgebaut ist, ist es auch das Cover Art. Es ist ein multidimensionaler Vektor- oder Assoziationsraum, eine Art Moodboard, eine Visualisierung der Semantik des Albums. Ein einzelnes Bild/Requisit kann mehrere Tracks referenzieren - und umgekehrt. Im zentralen Bild sehen wir das Haus, an dessen Innenwand die Bilder hängen.

## Die Frau auf den Bildern
Auf den Bildern taucht insgesamt dreimal dieselbe Frau auf. Das ist nicht das Gesicht der Sängerin (schließlich hat eine KI kein Gesicht und mein Artist-Profil ist keine AI Persona), sondern das Lyrische Ich aus den Lyrics in Menschengestalt - die Übergänge sind natürlich fließend (bis hin zu dem unbeabsichtigten Umstand, dass Jan im Englischen ein weiblicher Vorname ist). Als Referenz diente ein älterer Mood Shot für dasselbe Romanprojekt, das auch Hollow beeinflusst hat. Diese *Frau* existierte also schon vor dem ersten Track. Kurioserweise hat Gemini, als es die Instrumentalspur für Journey erstellte, von sich aus, dieses Bild aus älteren Chats ausgegraben und für das automatisch generierte Cover art verwendet - es war also die KI selbst, die diesen Bogen geschlossen hat.

## Die Galerie
Im ersten Schritt habe ich den Innenraum mit seiner Natursteinwand und das geometrisch perfekte 3×3-Grid der Bilderrahmen mit Passepartout, aber ohne Inhalt erstellen lassen. Mir war klar, dass ein einziger Prompt unmöglich den Raum und 8/9 perfekte Bilder erstellen könnte. Zudem gefiel mir die Idee, dass ich die Bilder in den Rahmen selbst aussuche und so zum Kurator dieser kleinen Galerie werde. 
Im ersten Versuch hatte die KI unaufgefordert zwei alte zerfledderte Bücher (die Art, die man im Deko-Laden kaufen kann, die aber niemand wirklich als Buch zuhause hat) und einen Lavendelstrauß platziert. Die Bücher habe ich entfernt bzw. ausgetauscht, den Lavendel aber belassen. Ich dachte mir, wenn sich die KI diesen Strauß für *ihr* Zuhause *wünscht*, dann soll sie ihn auch bekommen. Ich habe dann noch einen Teller mit Cookies, Autoschlüssel, Bleistift, Muscheln und Bücher ergänzen lassen. Die Anordnung der Bücher und der Requisiten ist geradezu manisch korrekt. Ich habe dem Drang, das künstlich unordentlich und damit menschlicher zu gestalten, widerstanden, weil es die synthetische Natur des Bilder wunderbar eingefangen hat.
Um ohne externe Tools auf eine Auflösung von 4M zu kommen, habe ich mit Google Flow gearbeitet (Gemini gibt in der App nur 1M aus).

## Die Bilder
Jedes Bild habe ich gesondert in einem eigenen Chat erstellt. Ich habe stets die Farbversion angefordert, um die Schwarz-Weiß-Konvertierung von Hand durchführen zu können. Um den Bildern die digitale Härte zu nehmen, habe ich zudem massiv mit Nachbelichten bei gleichzeitigem Anheben von Schwarz auf Grau gearbeitet. Die Schatten “ertrinken” dadurch, ohne das Bild zu erdrücken, und es entsteht ein verwaschener Look, der an frühe Fotos von archäologischen Grabungen erinnert. Natürlich hätte ich das auch prompten können, nur hätte ich dann weniger Kontrolle gehabt und wäre Gefahr gelaufen, dass die KI die Vorgabe unterschiedlich interpretiert. So konnte ich problemlos einen weitgehend einheitlichen Look herstellen.
Jedes Bild für sich sollte auch als Cover Art für das Album oder einzelne Tracks funktionieren. 

### Oben | Links
Eine Wand mit Abschlussurkunden und Auszeichnungen sowie ein Sideboard mit Trophäen und weiteren Urkunden - die materielle Repräsentation des “CV of a titan”. Ich habe dieses Bild später als Referenz für den Hintergrund der Tischszene im Hollow-Canvas verwendet.

### Oben | Mitte
Zwei leere Kinderwagen, Symbole für die Schwestern aus Shapeshifter und Agent. Über dem linken hängt ein Trenchcoat, derselbe wie in Mitte | Links.

### Oben | Rechts
Dieses Bild spielt ein bisschen mit der Bildkomposition von Swifts Evermore, nur dass sich hier die Frau genau im Moment des Bildes überrascht umdreht. 

### Mitte | Links
Das Lyrische ich im “taylored coat” von Agent am Strand von Wrecker. Das Motiv basiert auf einem älteren Moodboard picture. Der leichte Comic-Look (vor allem an den Rändern, den Steinen im Sand) rührt von der Vorlage her, die hatte ich damals in einem semirealistischen Comic-Stil gepromptet. Klassischer KI-Fehler: die Schuhabdrücke im Sand zeigen in die falsche Richtung.

### Zentrum
Der narrative Nexus, das “cottage in the pines” aus Jobs, überlagert mit Details aus Homecoming.

### Mitte | Rechts
Der Zaun aus Reflection, der Wald aus Shapeshifter.

### Unten | Links
Der Garten aus Window. YOU bleibt unsichtbar. Wir sehen nur die Attribute, die Gartengeräte, die aber merkwürdig deplatziert wirken wie *props*, die typische Art, wenn eine KI eine Liste von Gegenständen ohne Kontext abarbeitet. Hier beabsichtigt, würde ich es an anderer Stelle als schlechtes Prompting empfinden.

### Unten | Mitte
Ein hochgradig inszeniertes Protrait, das die Isolation aus Window oder das Nachsinnen aus Fame einfangen sollte. Trivia: da die Frau auf dem Referenzbild eine Jacke trägt, habe ich gerpomptet “sie trägt nur den Pullover und die Kette” - die KI hat das *nur* wörtlich interpretiert. Zum Glück konnte ich den Bildausschnitt so verändern, dass es nicht schlüpfrig wirkte.

### Unten | Rechts
Von Beginn an ohne Bild geplant, mehr zu im nächsten Abschnitt

### Outtakes
Die 8 Bilder standen nicht von Beginn an fest. Ich hatte weitere. Gerade zu Beginn gab es auch noch Bilder mit weiteren Menschen (ein Bild vom Abschlussball, zwei im Sand spielende Mädchen). Zu der *Bildsprache der Entfremdung* musste ich selbst erst finden.

## Der Transparenz-Vermerk
Das letzte Bild der Galerie und damit die Editorial Declaration haben eine massive Veränderung erfahren.
Ursprünglich wollte ich einen QR-Code, der auf dieses Github-Repo verweist, platzieren. Es wäre ein schöner Dreh gewesen, wenn in einer vermeintlich menschlichen Welt das einzig wirklich Menschliche ausgerechnet ein maschinenlesbarer Code gewesen wäre. Zudem hätte der Hörer so von jeder DSP ein direktes Gateway zu meinem Intent gehabt. Leider erlauben die DSP keine QR-Codes auf dem Cover. Das gilt genauso für URLs, Badges (daran hatte ich auch gedacht) und auch für klassischen Text. Das einzige Schlupfloch, das ich entdecken konnte: Text, der Teil des Bildinhalts ist, ist erlaubt. So entstand die Idee mit der Editorial Declaration im Stil eines Typography Art Print.
“Editorial Declaration” betont meine Rolle als Herausgeber/Kurator und wirkt nicht wie eine Warnung, sondern ein Statement. “Human Intent realized by AI” - die ganze Genese des Projekts in a nutshell. 
Es fehlt zwar der Verweis auf das Repo, aber hier musste ich mich den Vorgaben beugen. Immerhin werde ich meinem Transparenz-Anspruch auf dem Cover gerecht. Ich hoffe, dass der Betrachter von sich aus tiefer gräbt.

## Sichtbarkeit
Da die DSP Albencover prinzipiell erst einmal als winzige Kachel rendern, geht der Inhalt der Bilderrahmen natürlich auf den ersten Blick verloren. Das ist hier Absicht. Das Cover Art soll denjenigen belohnen, der genauer hinschaut - und ihm einen Mikrokosmos an zusätzlichen Informationen eröffnen. Das Motiv hat auch als winzige Kachel durch seine Komposition einen Wiedererkennungswert. Das 3×3-Grid wirkt dann fast wie ein App-Icon

<!-- END FILE: 80_cover-art.md -->
