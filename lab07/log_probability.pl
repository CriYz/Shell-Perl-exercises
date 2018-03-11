#!/usr/bin/perl


$zi=@ARGV[0];
%filecount=();
%fileword=();
foreach $file (glob "lyrics/*.txt") {
open F,'<',$file or die;

@shu=<F>;
$sizes=0;
$sizesword=0;
foreach $line(@shu){
$line=lc($line);
@word= split "[^a-z]",$line;
$size=0;
$sizeword=0;
foreach $wordd(@word){
if ($wordd){
$size+=1;
}
if ($wordd eq $zi){
       $sizeword+=1;
     }
}
$sizes+=$size;
$sizesword+=$sizeword;
}
$filecount{$file}=$sizes;
$fileword{$file}=$sizesword;
    }
foreach my $key (sort{$a cmp $b}  keys %filecount){
$key=~ /lyrics\/(.*).txt/; 
$filename=$1;
$filename=~ s/_/ /g;
printf("log((%d+1)/%6d) = %8.4f %s\n", $fileword{$key},$filecount{$key}, log(($fileword{$key}+1)/$filecount{$key}), $filename);

}

