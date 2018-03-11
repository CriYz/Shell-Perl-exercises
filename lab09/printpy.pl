#!/usr/bin/perl 


$line=$ARGV[0];
@ll=split "\n", $line;
foreach $l(@ll){
$l=~ s/\\/\\\\/g;
$l=~ s/\"/\\\"/g;
$l=~ s/\n//;
print "print(\"$l\")\n"
}
