# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{あ} ne "\x82\xa0";

use Char::Big5HKSCS;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あいう' =~ /(あいう)/) {
    if ("$1" eq "あいう") {
        print "ok - 1 $^X $__FILE__ ('あいう' =~ /あいう/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あいう' =~ /あいう/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あいう' =~ /あいう/).\n";
}

__END__
