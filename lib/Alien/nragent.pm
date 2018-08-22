package Alien::nragent;

use strict;
use warnings;
use 5.008001;
use FFI::Platypus::DL;
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

{
  my $fn = __PACKAGE__->dist_dir . "/lib/libnewrelic-common.so";
  my $handle = dlopen($fn, RTLD_NOW | RTLD_GLOBAL )
    or die "error dlopen $fn @{[ dlerror ]}";
}

1;
