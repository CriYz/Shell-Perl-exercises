#!/bin/sh


small=''
med=''
large=''
for file in *
do 
count=`cat $file |wc -l  `
if test $count -lt 10
then small=${small}" ${file}"
elif test $count -lt 100
then med=${med}" ${file}"
else
large=${large}" ${file}"
fi
done
echo "Small files:${small}"
echo "Medium-sized files:${med}"
echo "Large files:${large}"
