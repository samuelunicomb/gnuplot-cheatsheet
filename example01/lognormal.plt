# sample gnuplot script, can be used as cheatsheet

set logscale x
set logscale y

set grid
set grid mytics

set xrange[1e-5:1e2]
set yrange[1e0:1e3]

set xlabel "{/Symbol s}_{{/Symbol t}}"
set ylabel "t_{c}"
set title "Time to critical infected volume ({/Symbol r = 0.5}), varying {/Symbol t} sdv"

set format x "10^{%L}"
set format y "10^{%L}"

plot "data/tcrit-n1e4.txt" using 2:3 with points pointtype 7 ps 0.5 title "stochastic temporal network",\
     125 with lines lw 0.7 lc "red" dt 2 title "static network"
