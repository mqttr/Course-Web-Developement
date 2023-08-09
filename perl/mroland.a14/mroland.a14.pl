#!usr/bin/perl
# On my honor as a student of the University of Nebraska at Omaha, I have neither given nor received unauthorized help on this homework assignment.
# Other Contributors: None
# Matthew Roland; mroland

use warnings;
use strict;
use Modern::Perl;

my ($outputFilePath, $inputFilePath, @inputContent, @modifiedContent, $temperaryCalculation);
$inputFilePath = "testFile.txt";
$outputFilePath = "outFile.txt";

print "\n\n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n\n";

# Obtain DATA from $inputFilePath;
open (DATA, "< $inputFilePath");
@inputContent = <DATA>;

# Open $outputFilePath to write/create;
open (DATA, ">> $outputFilePath");

my $inputLength = @inputContent;
for (my $i = 0; $i < $inputLength; $i++){
    chomp($inputContent[$i] = $inputContent[$i]);
}


# Get all data from the file, modify it with the format required, add to @modifiedContent in same order;
push(@modifiedContent, "Maker of the File: $inputContent[0]") ;
push(@modifiedContent, "Class: $inputContent[1]");
push(@modifiedContent, "Section: $inputContent[2]");
push(@modifiedContent, "$inputContent[12]");
$temperaryCalculation = $inputContent[4] + $inputContent[5];
push(@modifiedContent,"Adding $inputContent[4] and $inputContent[5] gives us $temperaryCalculation");
$temperaryCalculation = $inputContent[6] - $inputContent[7];
push(@modifiedContent,"$inputContent[6] subtracting $inputContent[7] gives us $temperaryCalculation");
$temperaryCalculation = $inputContent[8] + $inputContent[9] + $inputContent[10];
push(@modifiedContent, "Combining $inputContent[8] and $inputContent[9] and $inputContent[10] gives us $temperaryCalculation");
$temperaryCalculation = $inputContent[8] * $inputContent[9] * $inputContent[10];
push(@modifiedContent, "Multipliplying gives us $temperaryCalculation");


my $modifiedLength = @modifiedContent;
for (my $i = 0; $i < $modifiedLength; $i++){
    chomp($modifiedContent[$i] = $modifiedContent[$i]); # removes \n from @modifiedContent array
    print(DATA "$modifiedContent[$i]\n"); # Write to $outputFilePath with all of @modifiedContent
    print("$modifiedContent[$i]\n");
}




print "\n\n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n\n";


# Maker of the File: [0]
# Class: [1]
# Section: [2]
# [12]
# [4] + [5]
# Adding [4] and [5] gives us $math
# [6] - [7]
# [6] subtracting [7] gives us $math
# [8] + [9] + [10]
# Combining [8] and [9] and [10] gives us $math
# [8] * [9] * [10]
# Multipliplying gives us $math