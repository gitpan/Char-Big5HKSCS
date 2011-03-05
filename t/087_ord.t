# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{あ} ne "\x82\xa0";

use Char::Big5HKSCS;
print "1..2\n";

my $__FILE__ = __FILE__;

if (Char::Big5HKSCS::ord('あ') == 0x82A0) {
    print qq{ok - 1 Char::Big5HKSCS::ord('あ') == 0x82A0 $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 Char::Big5HKSCS::ord('あ') == 0x82A0 $^X $__FILE__\n};
}

$_ = 'い';
if (Char::Big5HKSCS::ord == 0x82A2) {
    print qq{ok - 2 \$_ = 'い'; Char::Big5HKSCS::ord() == 0x82A2 $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 \$_ = 'い'; Char::Big5HKSCS::ord() == 0x82A2 $^X $__FILE__\n};
}

__END__
