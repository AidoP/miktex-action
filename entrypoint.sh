#!/bin/sh
find "$1" -name '*.tex' -type f -exec sh -c 'tectonic {} -o "'"$2"'"' \;