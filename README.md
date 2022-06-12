# gnuplot cheat sheet

WORK IN PROGRESS!

### Contents

1. [Formatting options](### Formatting)
2. [Greek alphabet](### Greek alphabet)

Below I maintain the gnuplot options and commands that I use most frequently. It is very far from exhaustive and is personal. I update it whenever I learn handy tricks and shorthand. When in doubt I consult a [HTML version](http://web.mit.edu/gnuplot_v4.2/doc/htmldocs/node1.html) of the gnuplot documentation. This version, 4.2, is out of date, but still mostly relevant. Up-to-date information can be found [here](http://www.gnuplot.info/), but unfortunately docs are in pdf formate. Demo are in HTML, which is handy.

### Formatting

In this section I list the `set` commands I use most frequently. For instance, to set all axes to `logscale`, we specify `set logscale`. They can by undone using the `unset` command, for instance, `unset logscale`. In the interpreter, option status can be verified with the `show` command, for instance, `show logscale` will indicate which axes are set to logarithmic, versus linear scale.

There is a great number of options, the following is a tiny subset that I've found helpful in my own workflow.

#### logscale, grid

* `set logscale` sets all axes to logscale
* `set logscale x` sets just the x axis to logscale
* `set logscale y` sets just the y axis to logscale
* `set logscale xy` sets both x and y axes to logscale

To control the grid,

* `set grid` produces a grid
* `set grid xtics` only produces vertical grid lines
* `set grid ytics` only produces horizontal grid lines
* `set grid mxtics` produces grid on minor x tics in logscale
* `set grid mytics` produces grid on minor x tics in logscale

To specify the range

* `set xrange[xmin:xmax]` x axis from `xmin` and `xmax`  
* `set yrange[ymin:ymax]` y axis from `ymin` and `ymax`

Set horizontal and vertical axis labels

* `set xlabel "xlabelstring"` sets x label to `xlabelstring`
* `set ylabel "ylabelstring"` sets y label to `ylabelstring`

Set title
 
* `set title "titlestring"` sets title to `titlestring`

Set the format of x and y tic lables

* `set format x "10^{%L}"` tic labels as 10<sup>2</sup>
* `set format x "..."` tic labels as...
* `set format x "..."` tic labels as...
* `set format x "..."` tic labels as...
* `set format x "..."` tic labels as...
* `set format x "..."` tic labels as...

### Plotting commands

Now we get to the actual plotting commands. Plotting column data. Note that the following shorthand is available,

* `plot` is the same as `p` when beginning a command
* `with` is the same as `w` to specify line type
* `using` is the same as `u`
* the type of curve is indicated by
	1. `l` means `lines`
	2. `p` means `points`
	3. `lp` means `linespoints`
* the type of curve is indicated by
	1. `lt` means `linetype`
	2. `pt` means `pointtype`
	3. `dt` means `dashtype`

For example,

* `p "filename" u 2:3 w p pt 7 ps 0.5 t "titlestring"`
* `p "filename"

### Greek alphabet

To produce greek letters for symbols in figure titles and axis lable, we use symbolic markup. The alphabet... keys `s` and `S` through the symbolic markup `{/Symbol s}` and `{/Symbol S}` produce the symbols &sigma; and &Sigma;, respectively.

| key | greek | key | greek | key | greek | key | greek |
|-----|-------------|-----|-------------|-----|-------------|-----|-------------|
|  A  |  &Alpha;    |  N  |  &Nu;       |  a  |  &alpha;    |  n  |  &nu;       |
|  B  |  &Beta;     |  O  |  &Omicron;  |  b  |  &beta;     |  o  |  &omicron;  |
|  C  |  &Chi;      |  P  |  &Pi;       |  c  |  &chi;      |  p  |  &pi;       |
|  D  |  &Delta;    |  Q  |  &Theta;    |  d  |  &delta;    |  q  |  &theta;    |
|  E  |  &Epsilon;  |  R  |  &Rho;      |  e  |  &epsilon;  |  r  |  &rho;      |
|  F  |  &Phi;      |  S  |  &Sigma;    |  f  |  &phi;      |  s  |  &sigma;    |
|  G  |  &Gamma;    |  T  |  &Tau;      |  g  |  &gamma;    |  t  |  &tau;      |
|  H  |  &Eta;      |  U  |  &Upsilon;  |  h  |  &eta;      |  u  |  &upsilon;  |
|  I  |  &iota;     |  W  |  &Omega;    |  i  |  &iota;     |  w  |  &omega;    |
|  K  |  &Kappa;    |  X  |  &Xi;       |  k  |  &kappa;    |  x  |  &xi;       |
|  L  |  &Lambda;   |  Y  |  &Psi;      |  l  |  &lambda;   |  y  |  &psi;      |
|  M  |  &Mu;       |  Z  |  &Zeta;     |  m  |  &mu;       |  z  |  &zeta;     |
