#!/usr/bin/python

import sys
import re

zhonglie=sys.argv[1]
n=0
num=0
for line in sys.stdin:
    name=re.findall(r"^\d+ (.*)",line)
    if name[0]==zhonglie:
        n+=1
        shu=re.findall(r"^(\d+) .*",line)
        num+=int(shu[0])
print("%s observations: %d pods, %d individuals" %(zhonglie, n, num))
    
