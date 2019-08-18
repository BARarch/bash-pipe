#!/bin/bash

if [ -z "$1" ]; then
  echo "What are you calling this"
  read TITLE
else
  TITLE="$1"
fi

d=date
f=+'%y%m%d'
da=$($d $f)
echo "$TITLE.cpp"
echo "Enter code stub below:"
echo "#Date Started: $da" > "$TITLE.cpp"
echo "" >> "$TITLE.cpp"
cat "$TITLE.cpp"
cat >> "$TITLE.cpp"

mkdir "cases-$TITLE"


git add .
git commit -a -m "Problem Started"
git push origin master

git status
