#let data = yaml(sys.inputs.data)

#set page(
  paper: "a4",
  margin: (top: 18mm, bottom: 18mm, left: 18mm, right: 18mm),
)

#set text(size: 11pt)

#set par(
  leading: 0.8em,
  spacing: 1.2em,
  justify: false,
)

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

#align(center)[
  #block(below: 12pt)[
    #text(size: 16pt, weight: "bold")[Deutsch]
  ]
]

= Ändere den Satz
#aufgabe("Satz", data.aendern_satz, "Schreibe einen neuen Satz mit dem gleichen Satzbau, aber mit anderen Wörtern (andere Person, anderer Ort, andere Handlung).")

= Rette den Satz
#aufgabe("Satz", data.retten_satz, "Verbessere den Satz. Achte auf Satzanfänge, Kommas und sinnvolle Satztrennung.")

= Schreibe weiter
#aufgabe("Satz", data.weiter_satz, "Schreibe genau einen passenden Satz weiter.")

= Schreibe einen kleinen Text
#aufgabe("Thema", data.text_thema, "Schreibe genau drei vollständige und richtige Sätze zu diesem Thema.")

