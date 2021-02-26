#!/bin/bash
cd /resume
pdflatex -interaction=nonstopmode resume.tex

rm *.aux *.out *.log *.fdb_latexmk *.fls *.synctex.gz

