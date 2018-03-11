#!/usr/bin/perl -w



$num=-1;
@filesname=();
@jian=();
$size=@ARGV;
if ($size!=0){
foreach $args (@ARGV){
if ($args=~ /^-\d+$/ ){
$num=$args;
$num=-$num;}
elsif ($args=~ /^.*\.txt$/){
push(@filesname, $args);}
}
if (@filesname){
$size=@filesname;
if ($size==1){
$files=$filesname[0];
if ($num==-1){
$count=10;}
else{
$count=$num;}
open F,'<',$files or die "$0: Can't open $files: $!\n";
@shu=<F>;
$size=@shu;
if ($size>$count){
for($pr=$size-$count;$pr<$size;$pr++){
print $shu[$pr];}}
else{
print @shu;}
}
else {
foreach $files (@filesname){
print "==> $files <==\n";
if ($num==-1){
$count=10;}
else{
$count=$num;}
open F,'<',$files or die "$0: Can't open $files: $!\n";
@shu=<F>;
$size=@shu;
if ($size>$count){
for($pr=$size-$count;$pr<$size;$pr++){
print $shu[$pr];}}
else{
print @shu;}
}}}}
else{
@jian=<>;
if (@jian){
if ($num==-1){
$count=10;}
else{
$count=$num;}
$size=@jian;
if ($size>$count){
for($pr=$size-$count;$pr<$size;$pr++){
print $jian[$pr];}}
else{
print @jian;}
}}





