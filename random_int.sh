#!/bin/bash

MAXINT=${1:-100}
echo "...[random_int] Trace: MAXINT is $MAXINT"

set -x
awk -v MAXINT=$MAXINT 'BEGIN { srand() ; select = 1 + int(rand() * MAXINT) ; print select }'
set +x

echo "...[random_int] Trace: Done getting random integer up to $MAXINT"
