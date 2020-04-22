#!/bin/bash

A=$1
B=$2
C=$3

python3 colours.py $A $B $C | tr ', ' '\n' | tr -d "'" | tr -d '#' | tr -d '[' | tr -d ']' | awk '{if (length ($0) > 3) print}' > dummy.dat

cat dummy.dat | awk '{print "\\definecolor{COL"NR-1"}{HTML}{"$1"}"}' > saved/cols-$A-$B-$C.tex

rm dummy.dat
