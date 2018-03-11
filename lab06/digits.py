#!/usr/bin/python

import sys


for line in sys.stdin:
    for word in line:
        if word.isdigit():
            c=int(word)
            if c>5:
                line=line.replace(word,'>')
            if c<5:
                line=line.replace(word,'<')
    line=line.strip('\n')
    print(line)
        
