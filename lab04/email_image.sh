#!/bin/sh

for file in "$@"
do
display "$file"
read -p "Address to e-mail this image to?" mail
read -p "Message to accompany image?" mes
echo "$mes"|mutt -s "${file%.*}!" -e 'set copy=no' -a $file -- $mail
echo  "$file sent to $mail" 
done
