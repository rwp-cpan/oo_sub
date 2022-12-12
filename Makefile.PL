use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
	NAME         => 'oop',
	VERSION_FROM => 'lib/oop.pm',
	AUTHOR       => 'Elvin Aslanov <rwp.primary@gmail.com>',
	ABSTRACT     => 'Enable OOP in Perl',
	LICENSE      => 'Perl',
	META_MERGE   => {
		resources => {
			repository => 'https://github.com/rwp/oop',
		},
	},
);
