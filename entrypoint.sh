#!/bin/sh

texify --pdf $1

cat /miktex/.miktex/texmfs/data/miktex/log/pdflatex.log
cat /miktex/.miktex/texmfs/data/miktex/log/texify.log