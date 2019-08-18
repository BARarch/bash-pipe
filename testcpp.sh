#!/bin/bash

if [ -z "$1" ]; then
  echo "What are you testing?"
  read TITLE
else
  TITLE="$1"
fi

c++4.9 $TITLE.cpp 

if [ -z "$2" ]; then
  FILES=cases-$TITLE/*
  for f in $FILES
  do
    echo ""
    echo "Testing $TITLE with $f..."
    echo "EXECUTABLE Output:"
    a.out < $f  
    echo ""  
  done
else
  echo ""
  SINGLECASE="cases-$TITLE/$2"
  echo "Testing $TITLE with $2..."
  echo "EXECUTABLE Output:"
  a.out < $SINGLECASE
  echo ""
fi