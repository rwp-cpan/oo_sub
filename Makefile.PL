use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
	NAME         => 'oo_sub',
	VERSION_FROM => 'lib/oo_sub.pm',
	AUTHOR       => 'Elvin Aslanov <rwp.primary@gmail.com>',
	ABSTRACT     => 'Enable OOP in Perl',
	LICENSE      => 'Perl',
	META_MERGE   => {
		resources => {
			repository => 'https://github.com/rwp/oo_sub',
		},
	},
);
