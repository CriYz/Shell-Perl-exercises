#!/usr/bin/perl



$sizes=0;
while ($line=<STDIN>){
@word= split "[^a-zA-Z]",$line;
$size=0;
foreach $wordd(@word){
if ($wordd){
$size+=1;
}
}
$sizes+=$size;
}

print "$sizes words\n"


