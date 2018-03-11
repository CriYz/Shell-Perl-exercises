#!/usr/bin/perl 

use List::MoreUtils qw(uniq);


@lines=<STDIN>;
foreach my $line(@lines){
	@ll=split " ", $line;
	@newll=();
	for (my $i=0;$i<@ll;$i++){
		@lll=split "",$ll[$i];
		%words=();
		foreach my $char(@lll){
			$char=lc($char);
			$words{$char}+=1;
		}
		@countt= values %words;
 		@unique= uniq @countt;
		$size=@unique;
		if ($size == 1 ){
			push(@newll,$ll[$i]);
		}
	}
	$newline=join(" ",@newll);
	print "$newline\n";
}
