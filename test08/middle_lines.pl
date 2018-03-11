#!/usr/bin/perl


$file=$ARGV[0];
open F,'<',$file or die;
@shu=<F>;
$size=@shu;
if ($size%2==0){
print @shu[$size/2-1];
print @shu[$size/2];
}
else{
print @shu[($size-1)/2];
}
