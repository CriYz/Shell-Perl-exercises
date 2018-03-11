#!/usr/bin/perl -w

$req=$ARGV[0];
$url="http://www.timetable.unsw.edu.au/current/${req}KENS.html";
open F, "wget -q -O- $url|" or die;
while ($line = <F>) {
if ($line=~ />${req}/){
$line=~ />(${req}\d+)</;
$course=$1;
print "$course\n";
}
}

