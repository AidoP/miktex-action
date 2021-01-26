#!/bin/sh

find $1 -follow -type f -name '*.tex' -exec sh -c 'pandoc -t pdf -o "'$2/'{}" "$(echo {} | sed s/\\.tex/.pdf/)" \' \;