#!/bin/sh


for file in "$@"
do 
infgg=`ls -l "${file}" |cut -d' ' -f6-`
tim="${infgg%$file}"
convert -gravity south -pointsize 36 -draw "text 0,10 '$tim'"  "$file" "$file"
done
