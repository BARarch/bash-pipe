#!/bin/bash

if [ -z "$1" ]; then
  echo "What problem are you adding this case to?"
  read TITLE
else
  TITLE="$1"
fi

cd "cases-$TITLE"

if [ -z "$2" ]; then
  d=date
  f=+'%y%m%d-%T'
  id=$($d $f)
else
  id="-$2"
fi

echo "testcase$id.txt"
echo "Enter case text:"

cat >> "testcase$id.txt"



