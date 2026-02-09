#import "common.typ": data, template, titel
#show: template

#let aufgabe(label, inhalt, beschreibung) = [
  *Aufgabe:* #beschreibung

  *#label:* #inhalt
]

#show heading: it => block(
  above: 1.6em,
  below: 0.6em,
)[
  #it
]

#set heading(numbering: "1.")

#titel("Deutsch")

= Ändere den Satz
#aufgabe("Satz", data.aendern_satz, "Schreibe einen neuen Satz mit dem gleichen Satzbau, aber mit anderen Wörtern (andere Person, anderer Ort, andere Handlung).")

= Rette den Satz
#aufgabe("Satz", data.retten_satz, "Verbessere den Satz. Achte auf Satzanfänge, Kommas und sinnvolle Satztrennung.")

= Schreibe weiter
#aufgabe("Satz", data.weiter_satz, "Schreibe genau einen passenden Satz weiter.")

= Schreibe einen kleinen Text
#aufgabe("Thema", data.text_thema, "Schreibe genau drei vollständige und richtige Sätze zu diesem Thema.")

