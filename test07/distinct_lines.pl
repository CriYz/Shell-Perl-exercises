#!/usr/bin/perl

@shuzu=();
$zhi=$ARGV[0];
$n=0;
while ($str=<STDIN>){
$n+=1;
@shu=split " ",$str;
@shushu=();
foreach $ss(@shu){
if ($ss){
push(@shushu,lc($ss));
}
}
$sss=join(' ',@shushu);
if ($sss~~@shuzu){
}
else{
push(@shuzu,$sss);
$size=@shuzu;
if ($size==$zhi){
print "$size distinct lines seen after $n lines read.\n";
exit;
}
}
}
print "End of input reached after $n lines read - $zhi different lines not seen.\n";
