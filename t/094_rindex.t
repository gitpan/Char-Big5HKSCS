# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{あ} ne "\x82\xa0";

use Char::Big5HKSCS;
print "1..4\n";

my $__FILE__ = __FILE__;

$_ = 'あいうえおあいうえお';
if (rindex($_,'いう') == 12) {
    print qq{ok - 1 rindex(\$_,'いう') == 12 $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 rindex(\$_,'いう') == 12 $^X $__FILE__\n};
}

$_ = 'あいうえおあいうえお';
if (rindex($_,'いう',10) == 2) {
    print qq{ok - 2 rindex(\$_,'いう',10) == 2 $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 rindex(\$_,'いう',10) == 2 $^X $__FILE__\n};
}

$_ = 'あいうえおあいうえお';
if (Char::Big5HKSCS::rindex($_,'いう') == 6) {
    print qq{ok - 3 Char::Big5HKSCS::rindex(\$_,'いう') == 6 $^X $__FILE__\n};
}
else {
    print qq{not ok - 3 Char::Big5HKSCS::rindex(\$_,'いう') == 6 $^X $__FILE__\n};
}

$_ = 'あいうえおあいうえお';
if (Char::Big5HKSCS::rindex($_,'いう',5) == 1) {
    print qq{ok - 4 Char::Big5HKSCS::rindex(\$_,'いう',5) == 1 $^X $__FILE__\n};
}
else {
    print qq{not ok - 4 Char::Big5HKSCS::rindex(\$_,'いう',5) == 1 $^X $__FILE__\n};
}

__END__
