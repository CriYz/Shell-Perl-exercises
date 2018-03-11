#!/usr/bin/perl

use List::Util qw/max min/;

@zong=();
while ($line=<STDIN>){
push(@zong,$line);
}

@ma=();
foreach $lines(@zong){
@zhee=();
@zi=split " ",$lines;
foreach $zz(@zi){
if ($zz=~ /(-?(\d+)?\.?\d+)/){
$ss=$1;
push(@zhee,$ss);
}
}
$mm=max @zhee;
push(@ma,$mm);
}

$cc= max @ma;
foreach $lines(@zong){
@zi=split " ",$lines;
foreach $zz(@zi){
if ($zz=~ /(-?(\d+)?\.?\d+)/){
$ss=$1;
if ($ss==$cc){
print $lines;
}
}
}

}

