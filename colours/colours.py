#!/usr/bin/python

import sys
import seaborn as sns
import matplotlib.pyplot as plt

a=int(sys.argv[1])
b=float(sys.argv[2])
c=float(sys.argv[3])

b=3 * b / 100.0
c=-1 + 2 * c / 100.0

blen=len(sys.argv[2])
clen=len(sys.argv[3])

if len(sys.argv[2]) == 1:
  bname='00'+sys.argv[2]
elif len(sys.argv[2]) == 2:
  bname='0'+sys.argv[2]
elif len(sys.argv[2]) == 3:
  bname=sys.argv[2]

if len(sys.argv[3]) == 1:
  cname='00'+sys.argv[3]
elif len(sys.argv[3]) == 2:
  cname='0'+sys.argv[3]
elif len(sys.argv[3]) == 3:
  cname=sys.argv[3]

sns.palplot(sns.cubehelix_palette(a, start=b, rot=c))

name=sys.argv[1]+'-'+bname+'-'+cname
#plt.savefig('%s.pdf' % name)

#plt.show ()

pal = sns.cubehelix_palette(a, start=b, rot=c)
print (pal.as_hex ())
