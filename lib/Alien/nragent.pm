package Alien::nragent;

use strict;
use warnings;
use 5.008001;
use FFI::Platypus::DL;
use List::Util qw( first );
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

If the NewRelic agent library is already in your library path, then they will be used.

If the NewRelic agent library is installed in C</opt/newrelic>, then that will be used.

Otherwise the NewRelic agent library will be downloaded, and installed.

=cut

{
  my $fn = first { /newrelic-common/ } __PACKAGE__->dynamic_libs;
  my $handle = dlopen($fn, RTLD_NOW | RTLD_GLOBAL )
    or die "error dlopen $fn @{[ dlerror ]}";
}

sub dynamic_libs
{
  my($class) = @_;
  
  if($class->install_type('system'))
  {
    return @{ $class->runtime_prop->{my_lib} };
  }
  else
  {
    return $class->SUPER::dynamic_libs;
  }
}

1;
