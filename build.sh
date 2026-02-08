#!/usr/bin/env bash
set -euo pipefail

OUTDIR="out"
mkdir -p "$OUTDIR"
shopt -s nullglob

BUILDS=(
  "template.typ:in/uebungen:Satzbau"
  "template-abschreiben.typ:in/abschreiben:Schreibübungen"
)

for entry in "${BUILDS[@]}"; do
  IFS=: read -r template indir prefix <<< "$entry"

  for yamlfile in "$indir"/*.yaml; do
    base="$(basename "$yamlfile" .yaml)"
    outfile="$OUTDIR/${prefix} ${base}.pdf"

    echo "→ $yamlfile  →  $outfile"
    typst compile --input data="$yamlfile" "$template" "$outfile"
  done
done
