#!usr/bin/perl
use Modern::Perl;
# On my honor as a student of the University of Nebraska at Omaha, I have neither given nor received unauthorized help on this homework assignment.
# Other Contributors: None
# Matthew Roland; mroland

my (@variables, $file, $data, $outFile, $math, @out, $fileOut, $element);
$file = "testFile.txt";
$outFile = "outFile.txt";

print "\n\n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n\n";

open ($data, "<", $file);

while(my $line = <$data>){
    push(@variables, $line);
    chomp @variables;
}

push(@out, "Maker of the File: @variables[0]") ;
push(@out, "Class: @variables[1]");
push(@out, "Section: @variables[2]");
push(@out, "@variables[12]");
$math = @variables[4] + @variables[5];
push(@out,"Adding @variables[4] and @variables[5] gives us $math");
$math = @variables[6] - @variables[7];
push(@out,"@variables[6] subtracting @variables[7] gives us $math");
$math = @variables[8] + @variables[9] + @variables[10];
push(@out, "Combining @variables[8] and @variables[9] and @variables[10] gives us $math");
$math = @variables[8] * @variables[9] * @variables[10];
push(@out, "Multipliplying gives us $math");

open ($fileOut, ">", $outFile);
printf $fileOut "%s\n", @out;

foreach (@{$data->{@out}}) { print "$_\n"; }

close $file;
close $fileOut;

print "\n\n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n\n";