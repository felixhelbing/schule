#import "common.typ": data, template, titel
#show: template

#titel("Mathe Subtraktion")

#let cell-size = 8mm
#let cols = calc.floor((210mm - 36mm) / cell-size)
#let rows = 7

#for aufgabe in data.aufgaben [
  *Aufgabe:* #aufgabe

  #v(6pt)

  #table(
    columns: (cell-size,) * cols,
    rows: (cell-size,) * rows,
    stroke: 0.4pt + luma(180),
    ..range(cols * rows).map(_ => [])
  )

  #v(16pt)
]
