#!/usr/bin/perl

# Clayton Bauman
# Mar 2013

use strict;
use warnings;
use YAML;
use Data::Dumper;

my $yaml_file = shift;
open YAML_FILE, $yaml_file or die "Couldn't open $yaml_file: $!\n";

my $yaml_text = join('', <YAML_FILE>);

# Load a YAML stream of 3 YAML documents into Perl data structures.
my ($hashref) = Load($yaml_text);

# Dump the Perl data structures back into YAML.
print Dumper($hashref);


