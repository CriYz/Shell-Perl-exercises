#!/usr/bin/perl 


$n=@ARGV[0];

$files=@ARGV[1];
open F,'<',$files or die "$0: Can't open $files: $!\n";
@shu=<F>;
$size=@shu;
if ($n<=$size && $n>0){
print $shu[$n-1];
}
