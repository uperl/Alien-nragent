# Alien::nragent [![Build Status](https://secure.travis-ci.org/plicease/Alien-nragent.png)](http://travis-ci.org/plicease/Alien-nragent)

Download and install the NewRelic agent

# SYNOPSIS

    use FFI::Platypus;
    use Alien::nragent;
    
    my $ffi = FFI::Platypus->new;
    $ffi->lib(Alien::nragent->dynamic_libs);
    ...

# DESCRIPTION

This Alien dist installs and makes available the NewRelic agent library.

If the NewRelic agent library is already in your library path, then they will be used.

If the NewRelic agent library is installed in `/opt/newrelic`, then that will be used.

Otherwise the NewRelic agent library will be downloaded, and installed.

# CAVEATS

## Platform Limitations

The SDK binaries provided by New Relic only work on Linux x86\_64.  The binaries are labeled
as a "beta" and were released in July 2016.  It doesn't seem likely that New Relic will be
releasing new versions of the SDK.  The author of this module has had good success getting
this module to work on Ubuntu Precise and Xenial, and heard from user feedback that it works
with Bionic.  I have heard that it does NOT work with CentOS 7.  Your mileage may vary.

## Not Fork Safe!

Bad things will happen if you call newrelic\_init before forking.  So don't do that.

# SEE ALSO

- [NewRelic::Agent::FFI::Procedural](https://metacpan.org/pod/NewRelic::Agent::FFI::Procedural)

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2018 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
