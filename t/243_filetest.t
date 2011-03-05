# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{あ} ne "\x82\xa0";

# ファイルテストが真になる場合は 1 が返るテスト

my $__FILE__ = __FILE__;

use Char::Ebig5hkscs;
print "1..9\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    for my $tno (1..9) {
        print "ok - $tno # SKIP $^X $0\n";
    }
    exit;
}

open(FILE,'>file');
close(FILE);

open(FILE,'file');

if ((Char::Ebig5hkscs::r 'file') == 1) {
    $_ = Char::Ebig5hkscs::r 'file';
    print "ok - 1 Char::Ebig5hkscs::r 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Ebig5hkscs::r 'file';
    print "not ok - 1 Char::Ebig5hkscs::r 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Ebig5hkscs::w 'file') == 1) {
    $_ = Char::Ebig5hkscs::w 'file';
    print "ok - 2 Char::Ebig5hkscs::w 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Ebig5hkscs::w 'file';
    print "not ok - 2 Char::Ebig5hkscs::w 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Ebig5hkscs::o 'file') == 1) {
    $_ = Char::Ebig5hkscs::o 'file';
    print "ok - 3 Char::Ebig5hkscs::o 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Ebig5hkscs::o 'file';
    print "not ok - 3 Char::Ebig5hkscs::o 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Ebig5hkscs::R 'file') == 1) {
    $_ = Char::Ebig5hkscs::R 'file';
    print "ok - 4 Char::Ebig5hkscs::R 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Ebig5hkscs::R 'file';
    print "not ok - 4 Char::Ebig5hkscs::R 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Ebig5hkscs::W 'file') == 1) {
    $_ = Char::Ebig5hkscs::W 'file';
    print "ok - 5 Char::Ebig5hkscs::W 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Ebig5hkscs::W 'file';
    print "not ok - 5 Char::Ebig5hkscs::W 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Ebig5hkscs::O 'file') == 1) {
    $_ = Char::Ebig5hkscs::O 'file';
    print "ok - 6 Char::Ebig5hkscs::O 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Ebig5hkscs::O 'file';
    print "not ok - 6 Char::Ebig5hkscs::O 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Ebig5hkscs::e 'file') == 1) {
    $_ = Char::Ebig5hkscs::e 'file';
    print "ok - 7 Char::Ebig5hkscs::e 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Ebig5hkscs::e 'file';
    print "not ok - 7 Char::Ebig5hkscs::e 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Ebig5hkscs::z 'file') == 1) {
    $_ = Char::Ebig5hkscs::z 'file';
    print "ok - 8 Char::Ebig5hkscs::z 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Ebig5hkscs::z 'file';
    print "not ok - 8 Char::Ebig5hkscs::z 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Ebig5hkscs::f 'file') == 1) {
    $_ = Char::Ebig5hkscs::f 'file';
    print "ok - 9 Char::Ebig5hkscs::f 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Ebig5hkscs::f 'file';
    print "not ok - 9 Char::Ebig5hkscs::f 'file' ($_) == 1 $^X $__FILE__\n";
}

close(FILE);
unlink('file');

__END__
