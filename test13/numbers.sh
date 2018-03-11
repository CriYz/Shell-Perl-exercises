#!/bin/sh

num=$1;
da=$2;
name="$3";
while ((num <= da ))
do
echo $num
num=$((num+1))
done >$name
