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