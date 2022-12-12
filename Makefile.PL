use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
	NAME         => 'oo_sub',
	VERSION_FROM => 'lib/oo_sub.pm',
	AUTHOR       => 'Elvin Aslanov <rwp.primary@gmail.com>',
	ABSTRACT     => 'Enable OOP for supported Perl functions',
	LICENSE      => 'Perl',
	META_MERGE   => {
		resources => {
			repository => 'https://github.com/rwp0/oo_sub',
		},
	},
);
