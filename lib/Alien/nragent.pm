package Alien::nragent;

use strict;
use warnings;
use 5.008001;
use Env qw( @LD_LIBRARY_PATH );
use base qw( Alien::Base );

# ABSTRACT: Download and install the NewRelic agent
# VERSION

=head1 SYNOPSIS

 use FFI::Platypus;
 use Alien::nragent;
 
 my $ffi = FFI::Platypus->new;
 $ffi->lib(Alien::nragent->dynamic_libs);
 ...

=head1 DESCRIPTION

This Alien dist installs and makes available the NewRelic agent library.

=cut

unshift @LD_LIBRARY_PATH, Alien::nragent->dist_dir . "/lib";

1;
