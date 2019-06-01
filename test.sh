#!/bin/bash

if [ -z "$1" ]; then
  echo "What are you testing?"
  read TITLE
else
  TITLE="$1"
fi

if [ -z "$2" ]; then
  FILES=$TITLE-cases/*
  for f in $FILES
  do
    echo ""
    echo "Testing $TITLE with $f..."
    $TITLE.py < $f
  done
else
  echo ""
  SINGLECASE="$TITLE-cases/$2"
  echo "Testing $TITLE with $2..."
  $TITLE.py < $SINGLECASE
fi