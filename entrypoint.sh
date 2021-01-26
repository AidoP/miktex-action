#!/bin/sh

ls -alh "$1"
pdflatex "$1"

# cat /miktex/.miktex/texmfs/data/miktex/log/pdflatex.log