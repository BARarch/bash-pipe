#!/bin/bash

if [ -z "$1" ]; then
  echo "What are you testing?"
  read TITLE
else
  TITLE="$1"
fi

OUTS="test-run-output.txt"
export OUTPUT_PATH="$OUTS"

if [ -z "$2" ]; then
  FILES=$TITLE-cases/*
  for f in $FILES
  do
    echo "" > "$OUTS"
    echo ""
    echo "Testing $TITLE with $f..."
    $TITLE.py < $f
    cat "$OUTS"
  done
else
  echo ""
  echo "" > "$OUTS"
  SINGLECASE="$TITLE-cases/$2"
  echo "Testing $TITLE with $2..."
  $TITLE.py < $SINGLECASE
  cat "$OUTS"
fi