#!/usr/bin/perl


@shuzu=<>;
$ding=@shuzu;
$num=@shuzu-1;
@array=();
while ($num>=0){
$dd=rand($ding);
if ($dd==$ding){
next;}
else{
if ($shuzu[$dd]~~@array){
next;}
else{
push(@array,$shuzu[$dd]);
print @shuzu[$dd];}
$num=$num-1;
}}

