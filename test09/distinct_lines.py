#!/usr/bin/python

import sys

num=int(sys.argv[1])
list=[]
n=0
for line in sys.stdin:
    n+=1
    li=line.split(' ')
    
    l=''
    for i in li:
        if i != '' and i !='\n':
            i=i.lower()
            l=l+i+' '
    if l not in list:
        list.append(l)
        
        count=len(list)
        if count==num:
            print('%d distinct lines seen after %d lines read.' % (num, n))
            exit()
print('End of input reached after %d lines read -  %d different lines not seen.' % (n,num))
    
