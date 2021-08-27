# slightly modified version of http://gensoft.pasteur.fr/docs/gnuplot/5.0.4/node36.html

set multiplot layout 3,3

set samples 1000

fourier(k, x) = sin(3./2*k)/k * 2./3*cos(k*x)

do for [power in "1 2 3 4 5 6 7 8 9"] {
  TERMS = 1*power
  set title sprintf ("%g term Fourier series",TERMS)
  plot 0.5 + sum [k=1:TERMS] fourier(k,x) notitle
}
unset multiplot
