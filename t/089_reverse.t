# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{��} ne "\x82\xa0";

use Char::Big5HKSCS;
print "1..2\n";

my $__FILE__ = __FILE__;

@_ = Char::Big5HKSCS::reverse('����������', '����������', '����������');
if ("@_" eq "���������� ���������� ����������") {
    print qq{ok - 1 \@_ = reverse('����������', '����������', '����������') $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 \@_ = reverse('����������', '����������', '����������') $^X $__FILE__\n};
}

$_ = Char::Big5HKSCS::reverse('����������', '����������', '����������');
if ($_ eq "������������������������������") {
    print qq{ok - 2 \$_ = reverse('����������', '����������', '����������') $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 \$_ = reverse('����������', '����������', '����������') $^X $__FILE__\n};
}

__END__
