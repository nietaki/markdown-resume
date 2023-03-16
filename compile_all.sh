#! /usr/bin/env bash
set -e

FILES="src/*"
for f in $FILES
do
  echo "Processing $f file..."
  ./compile.sh "$f" pdf
  ./compile.sh "$f" html
done
