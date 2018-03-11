#!/usr/bin/perl

$size= @ARGV;
if ($size!=2){
print "Usage: ./echon.pl <number of lines> <string>\n";
exit;
}

if (@ARGV[0]=~ /^\d+$/ ){
for ($a=0; $a< @ARGV[0]; $a=$a+1){
print "@ARGV[1]\n";
}}
else{
print "./echon.pl: argument 1 must be a non-negative integer\n";
exit;
}

