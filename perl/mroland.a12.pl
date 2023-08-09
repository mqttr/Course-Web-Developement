#!usr/bin/perl
# On my honor as a student of the University of Nebraska at Omaha, I have neither given nor received unauthorized help on this homework assignment.
# Other Contributors: None
# Matthew Roland; mroland

use Modern::Perl;
use Sort::Naturally qw/nsort/;


print "\n\nWelcome to mroland's Perl Ascending/Descending Orderer! \nPlease enter a series of numbers for me to arrange them in ascending order and descending order. End the loop by sending \"-1\"\n";

my ($loopingState, @userInput, @ascendingOrder, @descendingOrder, $temperaryInput, $endLooping);
$loopingState = 1;
$endLooping = "-1";

while ($loopingState){
    print "\nGive me a number, \"-1\" to end: ";
    chomp ($temperaryInput = <>);
    if ($temperaryInput eq $endLooping){
        last;
    }
    push (@userInput, $temperaryInput);
    # print "\n@userInput";
}

@ascendingOrder = nsort(@userInput);
@descendingOrder = reverse(@ascendingOrder);

print "\n
What you submitted for judgement: @userInput
In ascending order: @ascendingOrder
In descending order: @descendingOrder\n";

print "\n\n";