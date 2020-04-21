#!/bin/bash

# cleans a raw one line hex list outputted by running
# $ python3 colours.py | tr ', ' '\r\n' | tr -d '[' | tr -d ']'
# into something gnuplot can use. Takes in file named cb00, outputs to cb00.pal

INFILE=$1
OUTFILE=$1".pal"

NUMLINES=$(wc -l $INFILE | awk '{print $1}')

cat $INFILE | awk -v var=$NUMLINES 'BEGIN {print "set palette defined (\\"} {if (NR < var) {print NR - 1 " " $1 ",\\"} else {print NR - 1 " " $1 ")"}}' > $OUTFILE
