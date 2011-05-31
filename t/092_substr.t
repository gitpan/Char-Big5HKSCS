# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{��} ne "\x82\xa0";

use Char::Big5HKSCS;
print "1..20\n";

my $__FILE__ = __FILE__;

$_ = '��������������������';
if (substr($_,10) eq '����������') {
    print qq{ok - 1 substr(\$_,10) eq '����������' $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 substr(\$_,10) eq '����������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (substr($_,4,6) eq '������') {
    print qq{ok - 2 substr(\$_,4,6) eq '������' $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 substr(\$_,4,6) eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (substr($_,4,6,'����������') eq '������') {
    if ($_ eq '������������������������') {
        print qq{ok - 3 substr(\$_,4,6,'����������') eq '������' $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 3 substr(\$_,4,6,'����������') eq '������' $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 3 substr(\$_,4,6,'����������') eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (substr($_,-6) eq '������') {
    print qq{ok - 4 substr(\$_,-6) eq '������' $^X $__FILE__\n};
}
else {
    print qq{not ok - 4 substr(\$_,-6) eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (substr($_,-10,6) eq '������') {
    print qq{ok - 5 substr(\$_,-10,6) eq '������' $^X $__FILE__\n};
}
else {
    print qq{not ok - 5 substr(\$_,-10,6) eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (substr($_,-10,6,'����') eq '������') {
    if ($_ eq '�������������悯��') {
        print qq{ok - 6 substr(\$_,-10,6,'����') eq '������' $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 6 substr(\$_,-10,6,'����') eq '������' $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 6 substr(\$_,-10,6,'����') eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (substr($_,10,0) eq '') {
    print qq{ok - 7 substr(\$_,10,0) eq '' $^X $__FILE__\n};
}
else {
    print qq{not ok - 7 substr(\$_,10,0) eq '' $^X $__FILE__\n};
}

$_ = '��������������������';
if (substr($_,10,0,'����') eq '') {
    if ($_ eq '�������������悩��������') {
        print qq{ok - 8 substr(\$_,10,0,'����') eq '' $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 8 substr(\$_,10,0,'����') eq '' $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 8 substr(\$_,10,0,'����') eq '' $^X $__FILE__\n};
}

$_ = '��������������������';
if (substr($_,-10,0) eq '') {
    print qq{ok - 9 substr(\$_,-10,0) eq '' $^X $__FILE__\n};
}
else {
    print qq{not ok - 9 substr(\$_,-10,0) eq '' $^X $__FILE__\n};
}

$_ = '��������������������';
if (substr($_,-10,0,'����') eq '') {
    if ($_ eq '�������������悩��������') {
        print qq{ok - 10 substr(\$_,-10,0,'����') eq '' $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 10 substr(\$_,-10,0,'����') eq '' $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 10 substr(\$_,-10,0,'����') eq '' $^X $__FILE__\n};
}

$_ = '��������������������';
if (Char::Big5HKSCS::substr($_,5) eq '����������') {
    print qq{ok - 11 Char::Big5HKSCS::substr(\$_,5) eq '����������' $^X $__FILE__\n};
}
else {
    print qq{not ok - 11 Char::Big5HKSCS::substr(\$_,5) eq '����������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (Char::Big5HKSCS::substr($_,2,3) eq '������') {
    print qq{ok - 12 Char::Big5HKSCS::substr(\$_,2,3) eq '������' $^X $__FILE__\n};
}
else {
    print qq{not ok - 12 Char::Big5HKSCS::substr(\$_,2,3) eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (Char::Big5HKSCS::substr($_,2,3,'����������') eq '������') {
    if ($_ eq '������������������������') {
        print qq{ok - 13 Char::Big5HKSCS::substr(\$_,2,3,'����������') eq '������' $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 13 Char::Big5HKSCS::substr(\$_,2,3,'����������') eq '������' $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 13 Char::Big5HKSCS::substr(\$_,2,3,'����������') eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (Char::Big5HKSCS::substr($_,-3) eq '������') {
    print qq{ok - 14 Char::Big5HKSCS::substr(\$_,-3) eq '������' $^X $__FILE__\n};
}
else {
    print qq{not ok - 14 Char::Big5HKSCS::substr(\$_,-3) eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (Char::Big5HKSCS::substr($_,-5,3) eq '������') {
    print qq{ok - 15 Char::Big5HKSCS::substr(\$_,-5,3) eq '������' $^X $__FILE__\n};
}
else {
    print qq{not ok - 15 Char::Big5HKSCS::substr(\$_,-5,3) eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (Char::Big5HKSCS::substr($_,-5,3,'����') eq '������') {
    if ($_ eq '�������������悯��') {
        print qq{ok - 16 Char::Big5HKSCS::substr(\$_,-5,3,'����') eq '������' $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 16 Char::Big5HKSCS::substr(\$_,-5,3,'����') eq '������' $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 16 Char::Big5HKSCS::substr(\$_,-5,3,'����') eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (Char::Big5HKSCS::substr($_,5,0) eq '') {
    print qq{ok - 17 Char::Big5HKSCS::substr(\$_,5,0) eq '' $^X $__FILE__\n};
}
else {
    print qq{not ok - 17 Char::Big5HKSCS::substr(\$_,5,0) eq '' $^X $__FILE__\n};
}

$_ = '��������������������';
if (Char::Big5HKSCS::substr($_,5,0,'����') eq '') {
    if ($_ eq '�������������悩��������') {
        print qq{ok - 18 Char::Big5HKSCS::substr(\$_,5,0,'����') eq '' $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 18 Char::Big5HKSCS::substr(\$_,5,0,'����') eq '' $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 18 Char::Big5HKSCS::substr(\$_,5,0,'����') eq '' $^X $__FILE__\n};
}

$_ = '��������������������';
if (Char::Big5HKSCS::substr($_,-5,0) eq '') {
    print qq{ok - 19 Char::Big5HKSCS::substr(\$_,-5,0) eq '' $^X $__FILE__\n};
}
else {
    print qq{not ok - 19 Char::Big5HKSCS::substr(\$_,-5,0) eq '' $^X $__FILE__\n};
}

$_ = '��������������������';
if (Char::Big5HKSCS::substr($_,-5,0,'����') eq '') {
    if ($_ eq '�������������悩��������') {
        print qq{ok - 20 Char::Big5HKSCS::substr(\$_,-5,0,'����') eq '' $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 20 Char::Big5HKSCS::substr(\$_,-5,0,'����') eq '' $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 20 Char::Big5HKSCS::substr(\$_,-5,0,'����') eq '' $^X $__FILE__\n};
}

__END__