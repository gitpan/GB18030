# This file is encoded in GB18030.
die "This file is not encoded in GB18030.\n" if q{��} ne "\x82\xa0";

use GB18030;
print "1..2\n";

my $__FILE__ = __FILE__;

@_ = GB18030::reverse('����������', '����������', '����������');
if ("@_" eq "���������� ���������� ����������") {
    print qq{ok - 1 \@_ = reverse('����������', '����������', '����������') $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 \@_ = reverse('����������', '����������', '����������') $^X $__FILE__\n};
}

$_ = GB18030::reverse('����������', '����������', '����������');
if ($_ eq "������������������������������") {
    print qq{ok - 2 \$_ = reverse('����������', '����������', '����������') $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 \$_ = reverse('����������', '����������', '����������') $^X $__FILE__\n};
}

__END__
