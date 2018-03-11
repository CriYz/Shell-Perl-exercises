#!/bin/sh


IFS=$(echo -en "\n\b")
for dir in "$@"
do
for file in "$dir"/*
do 
if [ -f "$file" ];
then
title=`echo "${file#*-}"| awk -F '- ' '{$NF="";print}'|sed 's/^[ \t]*//g' |sed 's/[ \t]*$//g'`
art=`echo "${file%.*}" | awk -F '- ' '{print $NF}'|sed 's/^[ \t]*//g'`
album=`echo "$file"| cut -d'/' -f2`
yeat=`echo "$file"| cut -d'/' -f2| cut -d',' -f2|sed 's/^[ \t]*//g'`
track=`echo "$file"| awk -F '/' '{print $NF}'| cut -d'-' -f1|sed 's/[ \t]*$//g'`
id3 -t "$title" "$file" >/dev/null
id3 -a "$art" "$file" >/dev/null
id3 -A "$album" "$file" >/dev/null
id3 -y "$yeat" "$file" >/dev/null
id3 -T "$track" "$file" >/dev/null
fi
done
done
