#! /usr/bin/env bash

# one time in case there are some modifications already
./compile_all.sh

while read -r file
do
  echo "$file modified, rebuilding..."
  ./compile_all.sh >/dev/null 2>&1
  echo "done!"
done < <(inotifywait --format '%f' -mr -e 'moved_to,close_write' "./src/" "./styles/")
