#!/bin/bash

if [ -z "$1" ]; then
  echo "What are you testing?"
  read TITLE
else
  TITLE="$1"
fi

if [ -z "$2" ]; then
  FILES=cases/cases-$TITLE/*
  for f in $FILES
  do
    echo ""
    echo "Testing $TITLE with $f..."
    $TITLE.py < $f
    echo ""
    echo "DONE:"
  done
else
  echo ""
  SINGLECASE="cases-$TITLE/$2"
  echo "Testing $TITLE with $2..."
  $TITLE.py < $SINGLECASE
  echo ""
  echo "DONE:"
fi