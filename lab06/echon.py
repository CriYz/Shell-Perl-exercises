#!/usr/bin/python

import sys;


if len(sys.argv) !=3:
    print "Usage: ./echon.py <number of lines> <string>"
    sys.exit()
cishu=sys.argv[1];
zifu=sys.argv[2];
if cishu.isdigit():
    shu=int(cishu)
    while shu>0:
        print(zifu)
        shu-=1
else:
    print "./echon.py: argument 1 must be a non-negative integer"
    sys.exit() 
