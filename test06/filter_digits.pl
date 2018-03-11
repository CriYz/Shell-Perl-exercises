#!/usr/bin/perl

while ($a=<STDIN>){
$a=~ s/[0-9]//g;
print "$a";
}
