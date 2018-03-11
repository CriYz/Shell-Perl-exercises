#!/usr/bin/perl

@str=();
foreach $zhi(@ARGV){
if ($zhi~~@str){
}
else{
push(@str,$zhi);
}
}
$s = join(' ',@str);
print "$s\n";
