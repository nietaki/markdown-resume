#! /usr/bin/env bash

while read file
do
  echo "$file modified, rebuilding..."
  ./compile_all.sh >/dev/null 2>&1
  echo "done!"
done < <(inotifywait --format '%f' -mr -e 'moved_to,close_write' "./src/")
