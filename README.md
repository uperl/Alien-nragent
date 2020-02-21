# Alien::nragent [![Build Status](https://secure.travis-ci.org/plicease/Alien-nragent.png)](http://travis-ci.org/plicease/Alien-nragent)

Download and install the NewRelic agent

# SYNOPSIS

```perl
use FFI::Platypus;
use Alien::nragent;

my $ffi = FFI::Platypus->new;
$ffi->lib(Alien::nragent->dynamic_libs);
...
```

# DESCRIPTION

This Alien dist installs and makes available the NewRelic agent library.

If the NewRelic agent library is already in your library path, then they will be used.

If the NewRelic agent library is installed in `/opt/newrelic`, then that will be used.

Otherwise the NewRelic agent library will be downloaded, and installed.

# CAVEATS

## Platform Limitations

The SDK binaries provided by New Relic only work on Linux x86\_64.  The binaries are labeled
as a "beta".  The most recent version available (as of this writing) is dated July 1, 2019.
However, I believe the New Relic Agent SDK is no longer being actively developed, and you
are encouraged to consider the New Relic C SDK instead.

I have found that previous versions worked on Ubuntu Precise and Xenial, but not Cent OS 7.
Your mileage my vary.

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
