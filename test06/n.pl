#!/usr/bin/perl


%count=();
while($line=<STDIN>){
$count{$line}+=1;
if ($count{$line}==$ARGV[0]){
print "snap: $line\n";
exit;

}

}
