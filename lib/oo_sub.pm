package oo_sub v1.0.2;

use strict;
use warnings;

use Module::Load;

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
); # TODO: Don't repeat: find a way to to detect use-d modules somehow

for my $module ( @modules ) {
	Module::Load::autoload_remote my $caller = caller, $module;
}

# TODO: Import modules by export categories (eg. user, time, network, file)

# https://perldoc.perl.org/Module::Load#autoload_remote

1;

=pod

=head1 NAME

oo_sub - Use object-oriented versions of built-in Perl functions

=head1 SYNOPSIS

  use oo_sub;

  my $user = getpwnam('root');
  print $user -> uid;

  my $group = getgrgid(0);
  say $group -> name; # use feature 'say';

  say my $file = stat('.') -> ino;

  printf "%s: %s", getprotobyname('tcp') -> proto, getservbyname('ftp') -> port;

  say Dumper getnetbyname('loopback'); # use Data::Dumper;

  say p my $time = localtime('.'); # use DDP;

=head1 DESCRIPTION

Perl pragma to import the following modules to enable OOP in Perl for some built-in functions:

=over 2

=item L<User::pwent>

=item L<User::grent>

=item L<File::stat>

=item L<Time::Piece>

=item L<Net::netent>

=item L<Net::protoent>

=item L<Net::servent>

=back

Uses L<autoload_remote|Module::Load/autoload_remote> to achieve this.

=cut

=head1 AUTHOR

Elvin Aslanov <rwp.primary@gmail.com>

=head1 COPYRIGHT

This library is free software; you may redistribute and/or modify it
under the same terms as Perl itself.

=head1 SEE ALSO

L<User::pwent>, L<File::stat>, L<Time::Piece>, L<Module:Load>



=cut
