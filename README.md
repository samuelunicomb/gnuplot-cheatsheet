# gnuplot cheatsheet 

Detailing common options in my favourite plotting program. This is a work in progress.



## Formatting options

Axis logscale settings

```
set logscale           # enables log base 10 scaling of all axes
set logscale x         # enables log base 10 scaling of x axis
set logscale xy        # enables log base 10 scaling of x and y axes
set logscale x 2       # enables scaling log base 2 of the x axis
```

Grid and key settings

```
set grid               # produces a grid, x and y
set grid xtics         # produces vertical grid lines
set grid mxtics        # produces grid on minor x tics in logscale
set key top left       # puts legend at top left
set key center right   # puts legend at center right
```

Axis range settings

```
set xrange[xmin:xmax]       # x axis from xmin to xmax
set yrange[ymin:ymax]       # y axis from ymin to ymax
```

Titles and axis labels

```
set title "title"                  # sets title to `title`
set label "label" at (1,1)         # places the string `label` at (1,1)
set xlabel "label" rotate by 30    # sets x label to `label`, rotates 30 degrees
```

Plots with multiple panels

```
set multiplot layout m,n title "title"   # m by n multiplot, titled `title`
set [lrtb]margin 5                       # sets left, right, top, bottom margin
```

Set the format of x and y tic lables

* `set format x "%t"; set xtics (5,10); p x` produces "5.0" and "1.0"
* `set format x "%s"; set xtics (500,1000); p x` produces "500" and "1.0"
* `set format x "%+-12.3f"; set xtics (12345); p x` produces "+12345.000"
* `set format x "%.2t*10^%+03T"; set xtic (12345); p x`produces "1.23*10^+04"
* `set format x "%s*10^{%S}"; set xtic (12345); p x` produces "12.345*10^{3}"
* `set format x "%s %cg"; set xtic (12345); p x` produces "12.345 kg"
* `set format x "%.0P pi"; set xtic (6.283185); p x` produces "2 pi"
* `set format x "%.0f%%"; set xtic (50); p x` produces "50%"
* `set format x "10^{%L}"; set xtic (1,10,100); p x` produces  10<sup>2</sup>

Note, `sprintf("%d", i)` is super helpful if `i` is a variable, for example in a `for` loop.

## Outputting data to table

* `set table 'file.dat'; p f(x); unset table` writes `f(x)` to `file.dat`

## Error bars

To do

## Outputting data to plot

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


#### plotting curves
#### plotting heat maps
#### plotting vector fields
#### polar plots
#### plotting specific points

```
set for[i=1:10] arrow from i, graph 0 to i, graph 1 nohead # vertical lines
set object circle at 1,1 radius 0.05 fillcolor rgb 'black' fillstyle solid border
```

#### misc

* `p "filename" u 2:3 w p pt 7 ps 0.5 t "titlestring"`
* `p "filename"...`

## gnuplotrc and ~/.gnuplot

`gnuplotrc` is a startup file that sets style macros using any combination of the above specifiers. On macOS, this is normally stored in `/usr/local/Cellar/gnuplot/*/share/gnuplot/*`, where `*` is version. However, if `.gnuplot` is present in `~`, it overrides `gnuplotrc`. Use `~/.gnuplot` which will persist after version updates.  Mine includes something to the effect of

```
set term qt size 800,600    # specifies terminal type and plot window size
set tics font ",12"         # specifies the font size of axis tics
set key font ",12"          # specifies the font size of legend text
```

## Miscellanea

* `set samples 100` sets the sampling rate for functions to 100

### Greek alphabet

To produce greek letters for symbols in figure titles and axis lable, we use symbolic markup. The alphabet... keys `s` and `S` through the symbolic markup `{/Symbol s}` and `{/Symbol S}` produce the symbols &sigma; and &Sigma;, respectively. For example, `set title "{/Symbol b}-decay"`.

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

### About this file

Above I maintain the gnuplot options and commands that I use most frequently. It is very far from exhaustive and is personal. I update it whenever I learn handy tricks and shorthand. When in doubt I consult a [HTML version](http://web.mit.edu/gnuplot_v4.2/doc/htmldocs/node1.html) of the gnuplot documentation. This version, 4.2, is out of date, but still mostly relevant. Up-to-date information can be found [here](http://www.gnuplot.info/), but unfortunately docs are in pdf formate. Demo are in HTML, which is handy.


Above I list the `set` commands I use most frequently. For instance, to set all axes to `logscale`, we specify `set logscale`. They can by undone using the `unset` command, for instance, `unset logscale`. In the interpreter, option status can be verified with the `show` command, for instance, `show logscale` will indicate which axes are set to logarithmic, versus linear scale.

Also, note that there is a great number of options, the preceding is a tiny subset that I've found helpful in my own workflow.
