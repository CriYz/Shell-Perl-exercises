#!/usr/bin/perl 


if ($ARGV[0]){
open F,"<",$ARGV[0] or die;
@code=<F>;
}

@codeperl=();
foreach $line(@code){
	if ($line=~ /while /){
                $lll=$line;
		$lll=~ s/\(\(/\(/ ;
                $lll=~ s/\)\)/\)/;
		
		$ll=();
		if ($lll){
			while ($lll=~ /(\w+|\W+)/ig){
               $w=$1;
              
			   if ($w=~ /[a-zA-Z]+/ && $w ne "while"){
					$w="\$".$w;
					$ll=$ll.$w;
			   }
			   elsif ($w=~ /[=<>+-]+/){
					$w=" ".$w." ";
					$ll=$ll.$w;
			   }
			   elsif($w=~ /\d+/) {
					$ll=$ll.$w;
			   }
               else{
                    $ll=$ll.$w;
               }
			}
                        $ll=~ s/\n//;
			$ll=$ll." {\n";
			push(@codeperl,$ll);
		}
	}
	elsif ($line=~ /if /){
                $lll=$line;
		$lll=~ s/\(\(/\(/ ;
                $lll=~ s/\)\)/\)/;
		
		$ll=();
		if ($lll){
			while ($lll=~ /(\w+|\W+)/ig){
               $w=$1;
              
			   if ($w=~ /[a-zA-Z]+/ && $w ne "if"){
					$w="\$".$w;
					$ll=$ll.$w;
			   }
			   elsif ($w=~ /[=<>+-]+/){
					$w=" ".$w." ";
					$ll=$ll.$w;
			   }
			   elsif($w=~ /\d+/) {
					$ll=$ll.$w;
			   }
               else{
                    $ll=$ll.$w;
               }
			}
            $ll=~ s/\n//;
			$ll=$ll." {\n";
			push(@codeperl,$ll);
		}
	}
        elsif ($line=~ /else\n/){
              $ll="} else {\n"  ;
              push(@codeperl, $ll); 

        }
	elsif ($line=~ /done\n/ || $line=~ /fi\n/){
		$ll=$line;
		$ll=~ s/done/\}/;
                $ll=~ s/fi/\}/;
		push(@codeperl,$ll);
		}
	elsif ($line=~ /^#!\/bin\/bash/){
		$ll="#!/usr/bin/perl -w\n";
		push(@codeperl,$ll);
	}
	elsif ($line=~ /^#/){
		push(@codeperl,$line);
	}
	elsif ($line=~ /do\n/ || $line=~ /then\n/){
		$ll="{";
	}
    elsif ($line=~ /^\n/){
        push(@codeperl,$line)
	}
	elsif ($line=~ /echo /){
		$w=$line;
		$w=~ s/echo /print \"/;
                $w=~ s/\n//;
		$w=$w."\\n\";\n";
		push(@codeperl,$w);
		
	}
	else {
		$ll=();
                if ($line=~ /\$\(\(/){
                   $line=~ s/\$\(\(//;
                   $line=~ s/\)\)//;
                }
                elsif ($line=~ /\$/){
                     $line=~ s/\$//;
                }
		while ($line=~ /(\w+|\W+)/ig){
               $w=$1;
              
			   if ($w=~ /[a-zA-Z]+/){
					$w="\$".$w;
					$ll=$ll.$w;
			   }
			   elsif ($w=~ /[=<>+-]+/){
					$w=" ".$w." ";
					$ll=$ll.$w;
			   }
			   elsif($w=~ /\d+|\s/) {
					$ll=$ll.$w;
			   }


        }
                $ll=~ s/\s+$//;
		$ll=$ll.";\n";
		push(@codeperl,$ll);
    }
}
foreach $lllll(@codeperl){
print $lllll;
}
