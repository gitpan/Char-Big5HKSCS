# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{��} ne "\x82\xa0";

print "1..1\n";

my $__FILE__ = __FILE__;

if ($] < 5.014) {
    print "ok - 1 # SKIP $^X $__FILE__\n";
    exit;
}

if (open(TEST,">@{[__FILE__]}.t")) {
    print TEST <DATA>;
    close(TEST);
    system(qq{$^X @{[__FILE__]}.t});
    unlink("@{[__FILE__]}.t");
    unlink("@{[__FILE__]}.t.e");
}

__END__
use Char::Big5HKSCS;

my $__FILE__ = __FILE__;

$var = '0123456789';
Char::Big5HKSCS::substr($var,3,2) = 'ab';
if ($var eq '012ab56789') {
    print "ok - 1 $^X $__FILE__\n";
}
else {
    print "not ok - 1 $^X $__FILE__\n";
}

__END__
