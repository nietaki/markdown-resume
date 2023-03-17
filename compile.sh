#! /usr/bin/env bash

set -e

if [ "$#" -lt 1 ] || [ "$#" -gt 3 ] || ! [ -f "$1" ]; then
  echo "Usage:" >&2
  echo "$0 src/filename.md (pdf|html) [style_name]" >&2
  exit 1
fi

if [[ "pdf" != "$2" ]] && [[ "html" != "$2" ]]; then
  echo "invalid format, expected 'pdf' or 'html', got '$2'" >&2
  exit 1
fi

sourcefile="$1"
format="$2"

STYLE=$(pandoc -s "$sourcefile" --template extract_style.txt)


if [ -z "$STYLE" ]; then
  echo "style not set in markdown front matter, using default" >&2
  STYLE=default
fi

if [ ! -d "styles/$STYLE" ]; then
  echo "style '$STYLE' doesn't exist, using default" >&2
  STYLE=default
else 
  echo "using '$STYLE' style" >&2
fi


source_base=$(basename "$sourcefile" .md)

# shellcheck disable=SC2012
styles=$(ls -p styles/${STYLE}/*.css | sed "s/^/-c /" | tr "\n" " ")

# we actually want the spaces to split out the args
# shellcheck disable=SC2086
pandoc -s --self-contained -t html $styles "$sourcefile" -o "output/$source_base.$format" --pdf-engine-opt=--enable-local-file-access
