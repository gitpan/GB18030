# This file is encoded in GB18030.
die "This file is not encoded in GB18030.\n" if q{��} ne "\x82\xa0";

use GB18030;
print "1..1\n";

# �G���[�ɂ͂Ȃ�Ȃ����Ǖ�����������i�Q�j
if (q(�~�\\500) eq pack('C8',0x83,0x7e,0x83,0x5c,0x5c,0x35,0x30,0x30)) {
    print "ok - 1 q(MISO 500yen)\n";
}
else {
    print "not ok - 1 q(MISO 500yen)\n";
}

__END__

GB18030.pm �̏������ʂ��ȉ��ɂȂ邱�Ƃ����҂��Ă���

if (q(�~�\\\500) eq pack('C8',0x83,0x7e,0x83,0x5c,0x5c,0x35,0x30,0x30)) {

Shift-JIS�e�L�X�g�𐳂�������
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
