#!/bin/sh
[ -d "$3" ] &&
    find "$3" -name '*.ml' -type f -exec sh -c 'pygmentize -f tex -o "$(echo "{}" | grep -oP '"'.*(?=\.ml)'"').tex" "{}"' \;
find "$1" -name '*.tex' -type f -exec sh -c 'tectonic "{}" -o "'"$2"'"' \;