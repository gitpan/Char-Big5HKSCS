# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{��} ne "\x82\xa0";

use Char::Big5HKSCS;
print "1..1\n";

my $__FILE__ = __FILE__;

$a = "�A�\�\";
if ($a =~ s/(�A�\*)//) {
    if ($1 eq "�A�\�\") {
        print qq{ok - 1 "�A�\�\" =~ s/(�A�\*)// \$1=($1) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 "�A�\�\" =~ s/(�A�\*)// \$1=($1) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 "�A�\�\" =~ s/(�A�\*)// \$1=($1) $^X $__FILE__\n};
}

__END__
