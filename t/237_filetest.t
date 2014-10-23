# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{��} ne "\x82\xa0";

# Char::Ebig5hkscs::X �� -X (Perl�̃t�@�C���e�X�g���Z�q) �̌��ʂ���v���邱�Ƃ̃e�X�g

my $__FILE__ = __FILE__;

use Char::Ebig5hkscs;
print "1..48\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    for my $tno (1..48) {
        print "ok - $tno # SKIP $^X $0\n";
    }
    exit;
}

open(FILE,'>file');
close(FILE);

open(FILE,'file');

if (((Char::Ebig5hkscs::r 'file') ne '') == ((-r 'file') ne '')) {
    print "ok - 1 Char::Ebig5hkscs::r 'file' == -r 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 1 Char::Ebig5hkscs::r 'file' == -r 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::r FILE) ne '') == ((-r FILE) ne '')) {
    print "ok - 2 Char::Ebig5hkscs::r FILE == -r FILE $^X $__FILE__\n";
}
else {
    print "not ok - 2 Char::Ebig5hkscs::r FILE == -r FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::w 'file') ne '') == ((-w 'file') ne '')) {
    print "ok - 3 Char::Ebig5hkscs::w 'file' == -w 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 3 Char::Ebig5hkscs::w 'file' == -w 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::w FILE) ne '') == ((-w FILE) ne '')) {
    print "ok - 4 Char::Ebig5hkscs::w FILE == -w FILE $^X $__FILE__\n";
}
else {
    print "not ok - 4 Char::Ebig5hkscs::w FILE == -w FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::x 'file') ne '') == ((-x 'file') ne '')) {
    print "ok - 5 Char::Ebig5hkscs::x 'file' == -x 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 5 Char::Ebig5hkscs::x 'file' == -x 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::x FILE) ne '') == ((-x FILE) ne '')) {
    print "ok - 6 Char::Ebig5hkscs::x FILE == -x FILE $^X $__FILE__\n";
}
else {
    print "not ok - 6 Char::Ebig5hkscs::x FILE == -x FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::o 'file') ne '') == ((-o 'file') ne '')) {
    print "ok - 7 Char::Ebig5hkscs::o 'file' == -o 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 7 Char::Ebig5hkscs::o 'file' == -o 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::o FILE) ne '') == ((-o FILE) ne '')) {
    print "ok - 8 Char::Ebig5hkscs::o FILE == -o FILE $^X $__FILE__\n";
}
else {
    print "not ok - 8 Char::Ebig5hkscs::o FILE == -o FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::R 'file') ne '') == ((-R 'file') ne '')) {
    print "ok - 9 Char::Ebig5hkscs::R 'file' == -R 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 9 Char::Ebig5hkscs::R 'file' == -R 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::R FILE) ne '') == ((-R FILE) ne '')) {
    print "ok - 10 Char::Ebig5hkscs::R FILE == -R FILE $^X $__FILE__\n";
}
else {
    print "not ok - 10 Char::Ebig5hkscs::R FILE == -R FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::W 'file') ne '') == ((-W 'file') ne '')) {
    print "ok - 11 Char::Ebig5hkscs::W 'file' == -W 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 11 Char::Ebig5hkscs::W 'file' == -W 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::W FILE) ne '') == ((-W FILE) ne '')) {
    print "ok - 12 Char::Ebig5hkscs::W FILE == -W FILE $^X $__FILE__\n";
}
else {
    print "not ok - 12 Char::Ebig5hkscs::W FILE == -W FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::X 'file') ne '') == ((-X 'file') ne '')) {
    print "ok - 13 Char::Ebig5hkscs::X 'file' == -X 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 13 Char::Ebig5hkscs::X 'file' == -X 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::X FILE) ne '') == ((-X FILE) ne '')) {
    print "ok - 14 Char::Ebig5hkscs::X FILE == -X FILE $^X $__FILE__\n";
}
else {
    print "not ok - 14 Char::Ebig5hkscs::X FILE == -X FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::O 'file') ne '') == ((-O 'file') ne '')) {
    print "ok - 15 Char::Ebig5hkscs::O 'file' == -O 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 15 Char::Ebig5hkscs::O 'file' == -O 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::O FILE) ne '') == ((-O FILE) ne '')) {
    print "ok - 16 Char::Ebig5hkscs::O FILE == -O FILE $^X $__FILE__\n";
}
else {
    print "not ok - 16 Char::Ebig5hkscs::O FILE == -O FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::e 'file') ne '') == ((-e 'file') ne '')) {
    print "ok - 17 Char::Ebig5hkscs::e 'file' == -e 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 17 Char::Ebig5hkscs::e 'file' == -e 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::e FILE) ne '') == ((-e FILE) ne '')) {
    print "ok - 18 Char::Ebig5hkscs::e FILE == -e FILE $^X $__FILE__\n";
}
else {
    print "not ok - 18 Char::Ebig5hkscs::e FILE == -e FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::z 'file') ne '') == ((-z 'file') ne '')) {
    print "ok - 19 Char::Ebig5hkscs::z 'file' == -z 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 19 Char::Ebig5hkscs::z 'file' == -z 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::z FILE) ne '') == ((-z FILE) ne '')) {
    print "ok - 20 Char::Ebig5hkscs::z FILE == -z FILE $^X $__FILE__\n";
}
else {
    print "not ok - 20 Char::Ebig5hkscs::z FILE == -z FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::s 'file') ne '') == ((-s 'file') ne '')) {
    print "ok - 21 Char::Ebig5hkscs::s 'file' == -s 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 21 Char::Ebig5hkscs::s 'file' == -s 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::s FILE) ne '') == ((-s FILE) ne '')) {
    print "ok - 22 Char::Ebig5hkscs::s FILE == -s FILE $^X $__FILE__\n";
}
else {
    print "not ok - 22 Char::Ebig5hkscs::s FILE == -s FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::f 'file') ne '') == ((-f 'file') ne '')) {
    print "ok - 23 Char::Ebig5hkscs::f 'file' == -f 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 23 Char::Ebig5hkscs::f 'file' == -f 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::f FILE) ne '') == ((-f FILE) ne '')) {
    print "ok - 24 Char::Ebig5hkscs::f FILE == -f FILE $^X $__FILE__\n";
}
else {
    print "not ok - 24 Char::Ebig5hkscs::f FILE == -f FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::d 'file') ne '') == ((-d 'file') ne '')) {
    print "ok - 25 Char::Ebig5hkscs::d 'file' == -d 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 25 Char::Ebig5hkscs::d 'file' == -d 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::d FILE) ne '') == ((-d FILE) ne '')) {
    print "ok - 26 Char::Ebig5hkscs::d FILE == -d FILE $^X $__FILE__\n";
}
else {
    print "not ok - 26 Char::Ebig5hkscs::d FILE == -d FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::p 'file') ne '') == ((-p 'file') ne '')) {
    print "ok - 27 Char::Ebig5hkscs::p 'file' == -p 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 27 Char::Ebig5hkscs::p 'file' == -p 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::p FILE) ne '') == ((-p FILE) ne '')) {
    print "ok - 28 Char::Ebig5hkscs::p FILE == -p FILE $^X $__FILE__\n";
}
else {
    print "not ok - 28 Char::Ebig5hkscs::p FILE == -p FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::S 'file') ne '') == ((-S 'file') ne '')) {
    print "ok - 29 Char::Ebig5hkscs::S 'file' == -S 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 29 Char::Ebig5hkscs::S 'file' == -S 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::S FILE) ne '') == ((-S FILE) ne '')) {
    print "ok - 30 Char::Ebig5hkscs::S FILE == -S FILE $^X $__FILE__\n";
}
else {
    print "not ok - 30 Char::Ebig5hkscs::S FILE == -S FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::b 'file') ne '') == ((-b 'file') ne '')) {
    print "ok - 31 Char::Ebig5hkscs::b 'file' == -b 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 31 Char::Ebig5hkscs::b 'file' == -b 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::b FILE) ne '') == ((-b FILE) ne '')) {
    print "ok - 32 Char::Ebig5hkscs::b FILE == -b FILE $^X $__FILE__\n";
}
else {
    print "not ok - 32 Char::Ebig5hkscs::b FILE == -b FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::c 'file') ne '') == ((-c 'file') ne '')) {
    print "ok - 33 Char::Ebig5hkscs::c 'file' == -c 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 33 Char::Ebig5hkscs::c 'file' == -c 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::c FILE) ne '') == ((-c FILE) ne '')) {
    print "ok - 34 Char::Ebig5hkscs::c FILE == -c FILE $^X $__FILE__\n";
}
else {
    print "not ok - 34 Char::Ebig5hkscs::c FILE == -c FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::u 'file') ne '') == ((-u 'file') ne '')) {
    print "ok - 35 Char::Ebig5hkscs::u 'file' == -u 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 35 Char::Ebig5hkscs::u 'file' == -u 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::u FILE) ne '') == ((-u FILE) ne '')) {
    print "ok - 36 Char::Ebig5hkscs::u FILE == -u FILE $^X $__FILE__\n";
}
else {
    print "not ok - 36 Char::Ebig5hkscs::u FILE == -u FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::g 'file') ne '') == ((-g 'file') ne '')) {
    print "ok - 37 Char::Ebig5hkscs::g 'file' == -g 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 37 Char::Ebig5hkscs::g 'file' == -g 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::g FILE) ne '') == ((-g FILE) ne '')) {
    print "ok - 38 Char::Ebig5hkscs::g FILE == -g FILE $^X $__FILE__\n";
}
else {
    print "not ok - 38 Char::Ebig5hkscs::g FILE == -g FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::T 'file') ne '') == ((-T 'file') ne '')) {
    print "ok - 39 Char::Ebig5hkscs::T 'file' == -T 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 39 Char::Ebig5hkscs::T 'file' == -T 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::T FILE) ne '') == ((-T FILE) ne '')) {
    print "ok - 40 Char::Ebig5hkscs::T FILE == -T FILE $^X $__FILE__\n";
}
else {
    print "not ok - 40 Char::Ebig5hkscs::T FILE == -T FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::B 'file') ne '') == ((-B 'file') ne '')) {
    print "ok - 41 Char::Ebig5hkscs::B 'file' == -B 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 41 Char::Ebig5hkscs::B 'file' == -B 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::B FILE) ne '') == ((-B FILE) ne '')) {
    print "ok - 42 Char::Ebig5hkscs::B FILE == -B FILE $^X $__FILE__\n";
}
else {
    print "not ok - 42 Char::Ebig5hkscs::B FILE == -B FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::M 'file') ne '') == ((-M 'file') ne '')) {
    print "ok - 43 Char::Ebig5hkscs::M 'file' == -M 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 43 Char::Ebig5hkscs::M 'file' == -M 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::M FILE) ne '') == ((-M FILE) ne '')) {
    print "ok - 44 Char::Ebig5hkscs::M FILE == -M FILE $^X $__FILE__\n";
}
else {
    print "not ok - 44 Char::Ebig5hkscs::M FILE == -M FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::A 'file') ne '') == ((-A 'file') ne '')) {
    print "ok - 45 Char::Ebig5hkscs::A 'file' == -A 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 45 Char::Ebig5hkscs::A 'file' == -A 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::A FILE) ne '') == ((-A FILE) ne '')) {
    print "ok - 46 Char::Ebig5hkscs::A FILE == -A FILE $^X $__FILE__\n";
}
else {
    print "not ok - 46 Char::Ebig5hkscs::A FILE == -A FILE $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::C 'file') ne '') == ((-C 'file') ne '')) {
    print "ok - 47 Char::Ebig5hkscs::C 'file' == -C 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 47 Char::Ebig5hkscs::C 'file' == -C 'file' $^X $__FILE__\n";
}

if (((Char::Ebig5hkscs::C FILE) ne '') == ((-C FILE) ne '')) {
    print "ok - 48 Char::Ebig5hkscs::C FILE == -C FILE $^X $__FILE__\n";
}
else {
    print "not ok - 48 Char::Ebig5hkscs::C FILE == -C FILE $^X $__FILE__\n";
}

close(FILE);
unlink('file');

__END__
