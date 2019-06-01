#!/bin/bash

if [ -z "$1" ]; then
  echo "What are you testing?"
  read TITLE
else
  TITLE="$1"
fi

echo ""

if [ -z "$2" ]; then
  echo "Testing $TITLE..."
else
  SINGLECASE="$TITLE-cases/$2"
  echo "Testing $TITLE with $2..."
  $TITLE.py < $SINGLECASE
fi