#!/usr/bin/perl 

use Text::ASCIITable;

my @attrs = qw/NAME AUTHOR BIRTH VERSION WEBSITE/;

my @langs = qw/Perl Larry Wall 1987 5.18.2 http:www.perl.org/;
   


print "@attrs\t\n";
print "@langs\t\n";

