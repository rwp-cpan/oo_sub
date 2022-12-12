use v5.36;
use oo_sub;
use DDP; # CPAN: Data-Printer

say p my $user = getpwnam( 'root' );

say p my $group = getgrgid( 0 );

say p my $file = stat( '.' );

say p my $time = localtime( '.' );

say p my $network = getnetbyname( 'loopback' );

say p my $protocol = getprotobyname( 'tcp' );

say p my $service = getservbyname( 'ftp' );
