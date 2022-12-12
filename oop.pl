use v5.36;
use lib '.';
use oop;
use DDP; # CPAN: Data-Printer

say p my $p = getpwnam('root');

say p my $g = getgrgid(0);

say p my $f = stat('.');

say p my $t = localtime('.');

say p my $n = getnetbyname('loopback');

say p my $P = getprotobyname('tcp');

say p my $s = getservbyname('ftp');
