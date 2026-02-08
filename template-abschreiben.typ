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

#align(center)[
  #block(below: 12pt)[
    #text(size: 16pt, weight: "bold")[Abschreiben]
  ]
]

*Aufgabe:* Schreibe den Text langsam und ruhig ab. Wenn etwas nicht gut aussieht, schreibe einfach weiter.

#v(10pt)

*Satz:* #data.text
