# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{��} ne "\x82\xa0";

my $__FILE__ = __FILE__;

use Char::Big5HKSCS;
print "1..1\n";

my $chcp = '';
if ($^O =~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    $chcp = `chcp`;
}
if ($chcp !~ /932|950/oxms) {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

open(FILE,'>F�@�\') || die "Can't open file: F�@�\\n";
print FILE "1\n";
close(FILE);

# qx
if (qx/type F�@�\/) {
    print "ok - 1 qx $^X $__FILE__\n";
}
else {
    print "not ok - 1 qx $^X $__FILE__\n";
}

unlink('F�@�\');

__END__