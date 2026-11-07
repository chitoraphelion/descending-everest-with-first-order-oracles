#!/usr/bin/env bash
# Build from any working directory; keep intermediate files in .build/.
set -euo pipefail
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"
latexmk -xelatex -outdir=.build -interaction=nonstopmode -halt-on-error -file-line-error main.tex
cp -- .build/main.pdf main.pdf
