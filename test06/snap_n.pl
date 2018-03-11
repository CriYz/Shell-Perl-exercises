#!/usr/bin/perl -w



$num=$ARGV[0];
%h=();
@shuzu=();
while ($a=<STDIN>){
if ($a~~@shuzu){
$h{$a}++;
if ($h{$a}==$num){
print "Snap: $a";
last;
}
}
else{
push(@shuzu,$a);
$h{$a}=1;
if ($h{$a}==$num){
print "Snap: $a";
last;
}
}


}


