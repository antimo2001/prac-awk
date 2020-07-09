#!/bin/bash

function my-random-int {
  MAXINT=$1
  MAXINT=${MAXINT:-99}
  # echo "...[random_int] Debug: MAXINT is $MAXINT"

  random=$(awk -v MAXINT=$MAXINT '\
    BEGIN { \
      srand(); \
      r = rand() * MAXINT; \
      r = 1 + int(r); \
      print r \
    }')

  # echo "...[random_int] Debug: Done getting random integer up to $MAXINT"
  echo $random
}

my-random-int $1
