#!/usr/bin/python

import sys
import re


names=[]
h={}
hh={}

for line in sys.stdin:
    line=line.lower()
    lines=' '.join(line.split())
    if lines[-1]=='s':
        lines=lines[0:-1]
    name=re.findall(r"^\d+ (.*)",lines)
    if name[0] not in names:
        names.append(name[0])
        h[name[0]]=1
        shu=re.findall(r"^(\d+) .*",lines)
        hh[name[0]]=int(shu[0])
    else:
        h[name[0]]+=1
        shu=re.findall(r"^(\d+) .*",lines)
        hh[name[0]]+=int(shu[0])
names.sort()
for i in names:
    print("%s observations: %d pods, %d individuals" %(i, h[i], hh[i]))
    

        
    
