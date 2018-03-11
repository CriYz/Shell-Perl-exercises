#!/bin/sh

if test $# != 2
then
echo 'Usage: ./echon.sh <number of lines> <string>'
exit 1
fi

 
if test $1 -ge 0
then 
num=$1
else
echo './echon.sh: argument 1 must be a non-negative integer'
exit 1
fi
count=0
while test $count -lt $num
do
echo "$2"
let count++
done
