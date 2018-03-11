#!/bin/sh


for image in *.jpg
do
nam=`echo ${image%.*}`
if [ -f "${nam}.png" ];
then echo ${nam}.png already exists
exit 1
else
convert "$image" "${nam}.png"
rm "$image"
fi
done

