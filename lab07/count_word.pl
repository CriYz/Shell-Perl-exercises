#!/usr/bin/perl



$sizes=0;
$zi=@ARGV[0];
while ($line=<STDIN>){
  @word= split "[^a-zA-Z]",$line;
  $size=0;
  foreach $wordd(@word){
     if ($wordd eq (lc $zi)){
       $size+=1;
     }
     elsif ($wordd eq (uc $zi)){
     
$size+=1;
}
     elsif ($wordd eq ucfirst($zi)){
     
$size+=1;
}
     elsif ($wordd eq lcfirst($zi)){
     
$size+=1;
}
   }
  $sizes+=$size;
}

print "$zi occurred $sizes times\n"
