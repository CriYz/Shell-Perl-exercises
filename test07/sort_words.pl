#!/usr/bin/perl


while ($str=<STDIN>){
@shuzu=split " ",$str;
@shu=();
foreach $shu(@shuzu){
if ($shu){
push(@shu,$shu);
}
}
@shu= sort {$a cmp $b} @shu;
$str= join(' ',@shu);
print "$str\n";
}
