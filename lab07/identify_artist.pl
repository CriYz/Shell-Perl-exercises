#!/usr/bin/perl -w


@txt=@ARGV;
%artist=();
%filecount=();
foreach $file (glob "lyrics/*.txt") {
open F,'<',$file or die;
@shu=<F>;
$sizes=0;
foreach $line(@shu){
$line=lc($line);
$artist{$file}{$line}=$line;
@word= split "[^a-z]",$line;
$size=0;
foreach $wordd(@word){
if ($wordd){
$size+=1;
}
}
$sizes+=$size;
}
$filecount{$file}=$sizes;
}

%eachpro=();
%jieguo=();
$jieguos=();
foreach $file (glob "@txt") {
foreach $keysssss(keys %eachpro){
$eachpro{$keysssss}=0;
}
open F,'<',$file or die;
@boo=<F>;
foreach $line (@boo){
$line=lc($line);
@word= split "[^a-z]",$line;
foreach $wordd(@word){
if ($wordd){
foreach my $key(keys %artist){

my $artist1=$artist{$key};
$sizes=0;
foreach my $key3 (keys %$artist1){
$lines=$artist1->{$key3};
@words= split "[^a-z]",$lines;
$size=0;
foreach $wordds(@words){
if ($wordds eq $wordd){
$size+=1;

}
}
$sizes+=$size;
}

$eachpro{$key}+=log(($sizes+1)/$filecount{$key});
}
}
}
}
@kkey= sort {$eachpro{$b}<=>$eachpro{$a}} keys %eachpro;
$jieguo{$file}=$kkey[0];
$jieguos{$file}=$eachpro{$kkey[0]};
}

foreach my $key2(sort{$a cmp $b} keys %jieguo){
$view=$jieguo{$key2};
$view=~ /lyrics\/(.*).txt/; 
$filename=$1;
$filename=~ s/_/ /g;
$value=sprintf("%.1f",$jieguos{$key2});
print "$key2 most resembles the work of $filename (log-probability=$value)\n" ;
}

