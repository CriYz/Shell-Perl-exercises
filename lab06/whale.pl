#!/usr/bin/perl


$zhonglei=@ARGV[0];
$n=0;
$num=0;
while ($a=<STDIN>){
if ($a=~ /^\d+ $zhonglei$/){
$n++;
$a=~ /^(\d+)/;
$j=$1;
$num=$num+$j;
}
}
print "$zhonglei observations: $n pods, $num individuals\n"
