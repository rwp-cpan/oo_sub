#! /bin/sh

make distclean
rm MANIFEST
rm *.tar.gz

perl Makefile.PL
make
make manifest
make dist

sudo make install
# TODO: add a switch for this (installing locally) converting the script to Perl

cpan-upload -d oo_sub *.tar.gz
# TODO: add a switch for this (uploading to CPAN)
