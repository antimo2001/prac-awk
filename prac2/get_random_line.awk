#!/usr/bin/awk

## -----------------------------------------------------------------------------
## Returns a random line from the given stdin lines
## Usage: awk -f get_random_line.awk inputs.in
##

function f_random_int(MAXINT) {
  srand()
  r = rand() * MAXINT
  r = 1 + int(r)
  return r
}

/.*/ {
  linecount += 1
  lines[linecount] = $0
  # printf("...Debug: setup lines[%d]: %s\n", linecount, lines[linecount])
}

END {
  random = f_random_int(linecount)
  # printf("...Debug: Got random line[%d]: %s\n", random, lines[random])
  print lines[random]
}
