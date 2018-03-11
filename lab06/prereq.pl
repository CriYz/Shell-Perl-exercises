#!/usr/bin/perl 



$req=@ARGV[0];
@j=();
$url = "http://www.handbook.unsw.edu.au/postgraduate/courses/2017/$req.html";
open F, "wget -q -O- $url|" or die;
while ($line = <F>) {
if ($line=~ /Prerequisite(s)?: /){

    @kechenggg=split'<',$line;
@jie=split' ',$kechenggg[1];
foreach $jieg(@jie){
if ($jieg=~ /\w{4}\d{4}/){
$jieg=~ /(\w{4}\d{4})/;
$jieggg=$1;
push(@j,$jieggg);
}
}
}
}
$url = "http://www.handbook.unsw.edu.au/undergraduate/courses/2017/$req.html";
open F, "wget -q -O- $url|" or die;
while ($line = <F>) {
if ($line=~ /Prerequisite(s)?: /){
@kechenggg=split'<',$line;
@jie=split' ',$kechenggg[1];
foreach $jieg(@jie){
if ($jieg=~ /\w{4}\d{4}/){
$jieg=~ /(\w{4}\d{4})/;
$jieggg=$1;
push(@j,$jieggg);
}
}

}
}
@jj=sort { $a cmp $b }@j; 
foreach $jjj(@jj){
print "$jjj\n";}

