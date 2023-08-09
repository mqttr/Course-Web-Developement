#!usr/bin/perl
use Modern::Perl;
# On my honor as a student of the University of Nebraska at Omaha, I have neither given nor received unauthorized help on this homework assignment.
# Other Contributors: None
# Matthew Roland; mroland

my ($userinput, $largest, $smallest); # declare more than one variable at a time
print ("\n\n\tWelcome to mroland's number comparator!\n\n");
print("\nThis program takes six integers from the user, and \ndetermines which numbers
are the largest and smallest, \nthen outputs the results to the screen as
Largest:Smallest.\n"); # explain to the user what is does, needs, etc.

print "\nPlease enter the 1 th number: ";
chomp ($userinput = <>);
$largest = $userinput; # largest we’ve seen so far
$smallest = $userinput; # smallest we’ve seen so far

#Begin For Loop (5 times) asking if user to add more numbers
for ( my $i=2; $i<=6; $i++ ){
    print "\nPlease enter the $i th number: ";
    chomp ($userinput = <>);
    if ($userinput > $largest){
        $largest = $userinput;
    }
    if ($userinput < $smallest){
        $smallest = $userinput;
    }
    #print ("\nNew: input; largest; smallest: \n\t$userinput; $largest; $smallest\n");
}

print "\n$largest:$smallest\n\n";