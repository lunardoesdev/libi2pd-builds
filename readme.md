# integrating libi2pd
To integrate libi2pd in you app or package,
you want to have just a shared library that
contains everything needed, that is what
my project about.

## In releases you can find
libi2pd with c api header, openssl
replaced with libressl and most deps are
linked into shared library statically so
you dont need to care about them. We have
versions for:
 - macos arm/intel
 - windows arm/intel
 - linux arm/intel
 - android all arches

