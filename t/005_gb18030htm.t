# This file is encoded in GB18030.
die "This file is not encoded in GB18030.\n" if q{��} ne "\x82\xa0";

use GB18030;
print "1..1\n";

# �G���[�ɂ͂Ȃ�Ȃ����Ǖ�����������i�R�j
if ("�ۏ\net" eq pack('C7',0x8a,0xdb,0x8f,0x5c,0x6e,0x65,0x74)) {
    print qq<ok - 1 "MARU JU net"\n>;
}
else {
    print qq<not ok - 1 "MARU JU net"\n>;
}

__END__

GB18030.pm �̏������ʂ��ȉ��ɂȂ邱�Ƃ����҂��Ă���

if ("�ۏ\\net" eq pack('C7',0x8a,0xdb,0x8f,0x5c,0x6e,0x65,0x74)) {

Shift-JIS�e�L�X�g�𐳂�������
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm