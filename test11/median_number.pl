#!/usr/bin/perl

@l= sort { $a <=> $b } @ARGV;

$size=@l;
$shu=$l[$size/2];
print("$shu\n");
