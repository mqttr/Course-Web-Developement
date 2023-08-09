#!usr/bin/perl
use Modern::Perl;
# On my honor as a student of the University of Nebraska at Omaha, I have neither given nor received unauthorized help on this homework assignment.
# Other Contributors: None
# Matthew Roland; mroland


my ($gold, $blue, $green, $black);
my $counter = 8;
$gold=$green=$blue=$black=0;
$counter +=4;
while ($counter < 10)
{
     my $rndNum = rand (4);
     if ($rndNum == 0)
     {
           $gold++;
           print "\nHave you seen her dressed in gold? Like a queen…\n";
     }
     else
     {
           $blue++;
           print "\n\nHave you seen her dressed in blue? See the sky…\n";
     }
     $green = $blue = 3;
     $counter ++;
}
if ($gold != 0 || $black != 0 || $blue != 0 || $green != 0 )
     {
           print  "\nShe dreams of colours!\n";
     }
else
     {
           print "\nMonochrome!\n";
     }


# my $palin;

# print "\nGive me something that you think might be a palindrome:";
# chomp($palin = <>);

# (my $palin_nospace = $palin) =~ s/\s//g;

# my $revpalin = reverse($palin_nospace);

# print "$palin_nospace vs $revpalin"; 

# print "\n";
# if ($palin_nospace eq $revpalin){

#     print "$palin is a palindrome!";
# }
# else{
#     print "$palin is NOT a palindrome!";
# }

# print "\n\n";