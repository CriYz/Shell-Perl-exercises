#!/usr/bin/python

import sys;

count=len(sys.argv)
list=[]
for i in range(1,count):
    if sys.argv[i] not in list:
        list.append(sys.argv[i])

zi=" ".join(list)
print(zi)


