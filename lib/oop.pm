package oop;

use strict;
use warnings;

use Module::Load 'autoload_remote';

use User::pwent;
use User::grent;
use File::stat;
use Time::Piece;
use Net::netent;
use Net::protoent;
use Net::servent;

my @modules = qw(
	User::pwent
	User::grent
	File::stat
	Time::Piece
	Net::netent
	Net::protoent
	Net::servent
);

for my $module ( @modules ) {
	autoload_remote 'main', $module;
}

# https://perldoc.perl.org/Module::Load#autoload_remote

1;
