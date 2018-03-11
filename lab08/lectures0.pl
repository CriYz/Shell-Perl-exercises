#!/usr/bin/perl -w





foreach $req(@ARGV){
$n=0;
@hash=();
$url="http://timetable.unsw.edu.au/current/${req}.html";
open F, "wget -q -O- $url|" or die;
@neirong=<F>;
for (my $i=0; $i<@neirong;$i++){
if ($neirong[$i]=~ /Go to Class Detail records/){
$neirong[$i+1]=~  /(SEMESTER\s.*)\s</;
$xueqi=$1;
if ($xueqi eq 'SEMESTER TWO'){

$xue="S2 ";
$num=34;
while ($i+$num<@neirong){
if ($neirong[$i+$num-6]=~ />Lecture</ ){
$neirong[$i+$num]=~ />(.*)</;
$time=$1;

if ($time){
$tt=$xue.$time."\n";
if ($tt~~@hash){

$n+=1;
}
else{

push(@hash,$tt);
}
}
}
$num+=9;
}
}
elsif ($xueqi eq 'SEMESTER ONE'){

$xue="S1 ";
$num=34;

while ($i+$num<@neirong ){
if ($neirong[$i+$num-6]=~ />Lecture</ ){
$neirong[$i+$num]=~ />(.*)</;
$time=$1;
if ($time){
$tt=$xue.$time."\n";
if ($tt~~@hash){


$n+=1;
}
else{

push(@hash,$tt);
}
}
}
$num+=9;
}
}

}

}

foreach $key (@hash){
print "${req}: ";
print $key;
}
}

