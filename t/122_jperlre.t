# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{��} ne "\x82\xa0";

use Char::Big5HKSCS;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('������������' =~ /(����{3,4}����)/) {
    if ("$1" eq "������������") {
        print "ok - 1 $^X $__FILE__ ('������������' =~ /����{3,4}����/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('������������' =~ /����{3,4}����/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('������������' =~ /����{3,4}����/).\n";
}

__END__
