#!/bin/sh

find "$1" -name '*.tex' -type f -exec sh -c 'tectonic -X compile {} -o "'"$2/"'$(echo {} | sed -E '\''s/(.*).tex/\1/'\'').pdf"' \;