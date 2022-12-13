use strict;
use warnings;
use oo_sub;
use DDP; # CPAN: Data-Printer

p my $user = getpwnam( 'root' );

p my $group = getgrgid( 0 );

p my $file = stat( '.' );

p my $time = localtime( '.' );

p my $network = getnetbyname( 'loopback' );

p my $protocol = getprotobyname( 'tcp' );

p my $service = getservbyname( 'ftp' );

p my $host = gethostbyname( 'localhost' );


# Type of arg 1 to Data::Printer::p must be one of [@$%&] (not subroutine entry)
# Alternatively: p ${\getpwnam('root')};
