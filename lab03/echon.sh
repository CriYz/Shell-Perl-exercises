#!/bin/sh


read
if [ $# != 2 ];then
echo 'Usage: ./echon.sh <number of lines> <string>'
exit 1;
fi

if echo "$1" | grep -q "^[0-9][0-9]*$" ;then
num=$1
else
echo './echon.sh: argument 1 must be a non-negative integer'
exit 1;
fi

counter=0
while [ $counter -lt "$1" ]
do
echo $2
let counter++
done




