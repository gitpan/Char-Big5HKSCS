# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{��} ne "\x82\xa0";

# use strict;
use Char::Big5HKSCS;
print "1..1\n";

my $__FILE__ = __FILE__;

my $a = 'aaa_123';
$a =~ s/^[a-z]+_([0-9]+)$/$1/;
if ($a eq '123') {
    print "ok - 1 s/// (without 'use strict') ($a) $^X $__FILE__\n";
}
else {
    print "not ok - 1 s/// (without 'use strict') ($a) $^X $__FILE__\n";
}

__END__