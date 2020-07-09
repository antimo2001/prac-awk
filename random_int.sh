#!/bin/bash

function my-random-int {
  MAXINT=$1
  MAXINT=${MAXINT:-99}
  # echo "...[random_int] Debug: MAXINT is $MAXINT"

  random=$(awk -v MAXINT=$MAXINT 'BEGIN { srand() ; select = 1 + int(rand() * MAXINT) ; print select }')

  # echo "...[random_int] Debug: Done getting random integer up to $MAXINT"
  echo $random
}

my-random-int $1
