#!/usr/bin/python3

import sys
import re

for line in sys.stdin:
    lll=[]
    words=re.split('\s+',line)
    for word in words:
        ll={}
        for ch in word:
            ch=ch.lower()
            if ch in ll:
                ll[ch]+=1
            else:
                ll[ch]=1
        

        l=set(ll.values())
        if len(l)==1:
            lll.append(word)
    newline=" ".join(lll)
    print(newline)
