#!/usr/bin/perl

use strict;

# The program information

my $name = "passgen"; # A random password generator
my $version = "0.4.0";
my $author = "Copyright (c) 2008 - 2013, Karl Kernaghan";
my $email = "Email - kkernaghan7\@gmail.com";

# This is just a simple program I created to create passwords so I don't end up using
# the same ones twice. This way I always have a fresh password every time.
# This program only generates a random password, the chances of getting the same password twice is rare.

# This package is free software and is released under the Perl Artistic License.
# You are free to modify and redistribute this package under these terms. If these
# are your intentions please read and understand the terms of the Perl Artistic License,
# you should have received a copy along with this package, if not, you may view it with
# one of the following commands; man perlartistic  or  perldoc perlartistic

# THIS PACKAGE WAS RELEASED AS THE STANDARD VERSION BY THE COPYRIGHT HOLDER AND IS PROVIDED
# "AS IS" WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. 

print "\n";
print $name, " version - ",$version, "\n";
print $author, "\n";
print $email, "\n";

# The wonderful password generating code

# All random stuff
my @chars = ("A" .. "Z", "a" .. "z", 0 .. 9, "\!", "\@", "\%", "\^", "\&", "\*");

# Setting output to be random at 10 chars long
my $password = join("", @chars [ map { rand @chars } (1 .. 10)]);

print "\n";

print "Your password is: $password \n";

print "\n";
