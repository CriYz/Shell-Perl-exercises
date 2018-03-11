#!/usr/bin/python

import sys
import re

for line in sys.stdin:
    list=line.split(' ')
    list.sort()
    l=''
    
    for i in list:
        if i != '\s' and i != '\n':
            i=i.strip('\n')
            l=l+i+' '
    print(l)
