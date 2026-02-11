#!/usr/bin/env bash
set -euo pipefail

OUTDIR="out"
mkdir -p "$OUTDIR"
shopt -s nullglob

BUILDS=(
  "satzbau.typ:in/satzbau:Satzbau"
  "schreibuebung.typ:in/schreibuebung:Schreibuebung"
  "wortarten.typ:in/wortarten:Wortarten"
  "leseuebung.typ:in/leseuebung:Leseuebung"
  "subtraktion.typ:in/subtraktion:Subtraktion"
)

for entry in "${BUILDS[@]}"; do
  IFS=: read -r template indir prefix <<< "$entry"

  for yamlfile in "$indir"/*.yaml; do
    base="$(basename "$yamlfile" .yaml)"
    outfile="$OUTDIR/${prefix}_${base}.pdf"

    echo "→ $yamlfile  →  $outfile"
    typst compile --input data="$yamlfile" "$template" "$outfile"
  done
done
