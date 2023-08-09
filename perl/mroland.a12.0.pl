#!usr/bin/perl
use Modern::Perl;
# On my honor as a student of the University of Nebraska at Omaha, I have neither given nor received unauthorized help on this homework assignment.
# Other Contributors: None
# Matthew Roland; mroland

my ($guess, $target, $counter, $max, $gamestate);
$gamestate = 1;
$max = 8;

$target = (int rand 100) + 1;

$counter = 0;

#print "\n\nTEST: Target = $target\n\n";
print "\n\nWelcome to mroland's Perl Whole Number Guessing Game! \nPlease enter a number between 1 and 100 and I will tell you if the number you're trying to find is higher or lower than your guess. You have up to 8 chances to uncover the number.\n\n";

while ($gamestate){
    $counter++;
    if ($counter eq $max)
    {
        print "\nWhat is your last guess: ";
    }
    else{
        print "What is your $counter\0th guess: ";
    }
    chomp ($guess = <>);
    if ($guess eq $target){
        print "\nYou got $target in $counter guesses!\n\n";
        $gamestate = 0;
    }
    if ($guess < $target)
    {
        print "\nYour guess of \"$guess\" is less than the target!\n";
    }
    if ($guess > $target)
    {
        print "\nYour guess of \"$guess\" is more than the target!\n";
    }
    if ($counter eq $max)
    {
        print "\nYou failed!\n It took you more than $max guesses! Try better next time!\n\n";
        $gamestate = 0;
    }
}