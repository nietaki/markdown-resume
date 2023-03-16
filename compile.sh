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
style="default"
source_base=$(basename "$sourcefile" .md)
echo "$source_base"

pandoc -s --self-contained -t html -c "styles/$style/main.css"  "$sourcefile" -o "output/$source_base.$format" --pdf-engine-opt=--enable-local-file-access
