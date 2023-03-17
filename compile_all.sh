#! /usr/bin/env bash
set -e

FILES="src/*"
for f in $FILES
do
  echo "Processing $f file..."
  echo "compiling pdf..."
  ./compile.sh "$f" pdf
  echo "compiling html.."
  ./compile.sh "$f" html
  echo "DONE!"
done
