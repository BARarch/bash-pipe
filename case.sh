#!/bin/bash

if [ -z "$1" ]; then
  echo "What problem are you adding this case to?"
  read TITLE
else
  TITLE="$1"
fi

cd "$TITLE-cases"

n=$(ls -l | wc -l)

echo "testcase$n.txt"
echo "Enter case text:"

cat >> "testcase$n.txt"



