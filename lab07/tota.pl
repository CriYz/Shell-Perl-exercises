#!/usr/bin/perl

use strict;
use warnings;


my %wordhash;
while (my $line<STDIN>){
my @words= split "[^a-zA-Z]",$line;
foreach my $word(@words){
$wordhash{$word} +=1;
}


}

