# This file is encoded in GB18030.
die "This file is not encoded in GB18030.\n" if q{��} ne "\x82\xa0";

use GB18030;
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
if (GB18030::substr($_,5) eq '����������') {
    print qq{ok - 11 GB18030::substr(\$_,5) eq '����������' $^X $__FILE__\n};
}
else {
    print qq{not ok - 11 GB18030::substr(\$_,5) eq '����������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (GB18030::substr($_,2,3) eq '������') {
    print qq{ok - 12 GB18030::substr(\$_,2,3) eq '������' $^X $__FILE__\n};
}
else {
    print qq{not ok - 12 GB18030::substr(\$_,2,3) eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (GB18030::substr($_,2,3,'����������') eq '������') {
    if ($_ eq '������������������������') {
        print qq{ok - 13 GB18030::substr(\$_,2,3,'����������') eq '������' $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 13 GB18030::substr(\$_,2,3,'����������') eq '������' $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 13 GB18030::substr(\$_,2,3,'����������') eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (GB18030::substr($_,-3) eq '������') {
    print qq{ok - 14 GB18030::substr(\$_,-3) eq '������' $^X $__FILE__\n};
}
else {
    print qq{not ok - 14 GB18030::substr(\$_,-3) eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (GB18030::substr($_,-5,3) eq '������') {
    print qq{ok - 15 GB18030::substr(\$_,-5,3) eq '������' $^X $__FILE__\n};
}
else {
    print qq{not ok - 15 GB18030::substr(\$_,-5,3) eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (GB18030::substr($_,-5,3,'����') eq '������') {
    if ($_ eq '�������������悯��') {
        print qq{ok - 16 GB18030::substr(\$_,-5,3,'����') eq '������' $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 16 GB18030::substr(\$_,-5,3,'����') eq '������' $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 16 GB18030::substr(\$_,-5,3,'����') eq '������' $^X $__FILE__\n};
}

$_ = '��������������������';
if (GB18030::substr($_,5,0) eq '') {
    print qq{ok - 17 GB18030::substr(\$_,5,0) eq '' $^X $__FILE__\n};
}
else {
    print qq{not ok - 17 GB18030::substr(\$_,5,0) eq '' $^X $__FILE__\n};
}

$_ = '��������������������';
if (GB18030::substr($_,5,0,'����') eq '') {
    if ($_ eq '�������������悩��������') {
        print qq{ok - 18 GB18030::substr(\$_,5,0,'����') eq '' $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 18 GB18030::substr(\$_,5,0,'����') eq '' $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 18 GB18030::substr(\$_,5,0,'����') eq '' $^X $__FILE__\n};
}

$_ = '��������������������';
if (GB18030::substr($_,-5,0) eq '') {
    print qq{ok - 19 GB18030::substr(\$_,-5,0) eq '' $^X $__FILE__\n};
}
else {
    print qq{not ok - 19 GB18030::substr(\$_,-5,0) eq '' $^X $__FILE__\n};
}

$_ = '��������������������';
if (GB18030::substr($_,-5,0,'����') eq '') {
    if ($_ eq '�������������悩��������') {
        print qq{ok - 20 GB18030::substr(\$_,-5,0,'����') eq '' $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 20 GB18030::substr(\$_,-5,0,'����') eq '' $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 20 GB18030::substr(\$_,-5,0,'����') eq '' $^X $__FILE__\n};
}

__END__
