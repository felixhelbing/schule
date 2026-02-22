#import "common-data.typ": data, titel

#set page(
  paper: "a4",
  flipped: true,
  margin: (top: 15mm, bottom: 15mm, left: 18mm, right: 18mm),
)
#set text(size: 14pt)
#set par(leading: 1.0em, spacing: 1.4em, justify: false)

#let pronomen = ("er", "ich", "du", "wir", "ihr", "sie")

#for (i, pronoun) in pronomen.enumerate() [
  #titel("Zeitformen")

  *Aufgabe:* Schreibe das Verb in der richtigen Zeitform mit *#pronoun*.

  #v(6pt)

  #table(
    columns: (1.2fr, 1fr, 1fr, 1fr, 1fr),
    rows: (auto,) + (12mm,) * data.verben.len(),
    align: left + horizon,
    stroke: 0.5pt + luma(120),
    inset: 5pt,
    table.header(
      [*Verb*], [*Präsens*], [*Präteritum*], [*Perfekt*], [*Futur*],
    ),
    ..data.verben.map(verb => (
      [#verb],
      [#pronoun],
      [#pronoun],
      [#pronoun],
      [#pronoun],
    )).flatten()
  )

  #if i < pronomen.len() - 1 [
    #pagebreak()
  ]
]
