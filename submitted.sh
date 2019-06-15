#!/bin/bash

if [ -z "$1" ]; then
  echo "Which one have you submitted"
  read TITLE
else
  TITLE="$1"
fi

rm -r "$cases-$TITLE"

git add .

d=date
fd=+'%y-%m-%d'
td=$($d $fd)
ft=+'%T'
ts=$($d $ft)

if [ -z "$2" ]; then
  git commit -a -m "Submitted on $td at $ts"
else
  MSG="$2"
  git commit -a -m "Submitted on $td at $ts $MSG"
fi  
git push origin master

git status