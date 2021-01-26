#!/bin/sh

find $1 -follow -type f -name '*.tex' -exec sh -c 'pandoc -t pdf -o "{}" "$(echo {} | sed s/\\.tex/.pdf/)" \' \;