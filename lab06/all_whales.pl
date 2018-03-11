#!/usr/bin/perl

@array=();
%h=();
%hh=();
while ($a=<STDIN>){
$a=~ s/([A-Z])/\L$1\E/g;
$a=~ s/[\n\r]//g;
$a=~ s/ +$//;
if($a=~ /.*s$/){
chop($a);
}
$a=~ s/( )+/ /g;

$b=$a;
$b=~ s/^\d+ //g;
$name=$b;
if ($name~~@array){
$h{$name}++;
$a=~ /^(\d+) /;
$num=$1;
$hh{$name}=$hh{$name}+$num;

}
else{
push(@array, $name);
$h{$name}=1;
$a=~ /^(\d+) /;
$num=$1;
$hh{$name}=$num;

}
}
@w= sort @array;
foreach $whale(@w){
print "$whale observations: $h{$whale} pods, $hh{$whale} individuals\n";

}


