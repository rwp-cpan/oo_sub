use v5.36;
use oo_sub;
use DDP; # CPAN: Data-Printer

# Type of arg 1 to Data::Printer::p must be one of [@$%&] (not subroutine entry)

p my $user = getpwnam( 'root' );

p my $group = getgrgid( 0 );

p my $file = stat( '.' );

p my $time = localtime( '.' );

p my $network = getnetbyname( 'loopback' );

p my $protocol = getprotobyname( 'tcp' );

p my $service = getservbyname( 'ftp' );

p my $host = gethostbyname( 'localhost' );

# p ${\getpwnam('root')};
