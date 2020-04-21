#!/bin/bash

# cleans the raw RGB colour palette taken from colorbrewer.com into something
# gnuplot can use. Takes in file named cb00, outputs to cb00.pal

INFILE=$1
OUTFILE=$1".pal"

tac $INFILE | tr ',' ' ' | awk '{print NR " " $1 / 255 " " $2 / 255 " " $3 / 255}' > dummy1.pal

NUMLINES=$(wc -l dummy1.pal | awk '{print $1}')

cat dummy1.pal | awk -v var=$NUMLINES 'BEGIN {print "# palette"; print "set palette defined (\\"} {if (NR < var) {print $0 ",\\"} else {print $0 ")"}}' > $OUTFILE

rm dummy1.pal
