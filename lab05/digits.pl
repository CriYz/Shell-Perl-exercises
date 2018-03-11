#!/usr/bin/perl

while ($a=<STDIN>){
$a=~ tr/[0-4]/</;
$a=~ tr/[6-9]/>/;
print "$a";
}
