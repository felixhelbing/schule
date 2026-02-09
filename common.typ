#let data = yaml(sys.inputs.data)

#let template(body) = {
  set page(
    paper: "a4",
    margin: (top: 18mm, bottom: 18mm, left: 18mm, right: 18mm),
  )
  set text(size: 14pt)
  set par(
    leading: 1.0em,
    spacing: 1.4em,
    justify: false,
  )
  body
}

#let titel(name) = align(center)[
  #block(below: 20pt)[
    #text(size: 20pt, weight: "bold")[#name]
  ]
]
