# This file is encoded in GB18030.
die "This file is not encoded in GB18030.\n" if q{��} ne "\x82\xa0";

use GB18030;
print "1..1\n";

my $__FILE__ = __FILE__;

# �C���q C<i>, C<I> ����� C<j> �́AC<\p{}>, C<\P{}>, POSIX C<[: :]>.
# (�Ⴆ�� C<\p{IsLower}>, C<[:lower:]> �Ȃ�) �ɂ͍�p���܂���B
# ���̂��߁AC<re('\p{Lower}', 'iI')> �̑����
# C<re('\p{Alpha}')> ���g�p���Ă��������B

# GB18030 �\�t�g�E�F�A�� C<\p{}>, C<\P{}>, POSIX C<[: :]> �̋@�\�����Ƃ��Ƒ��݂��Ȃ��B

print "ok - 1 $^X $__FILE__ (NULL)\n";

__END__

http://search.cpan.org/dist/GB18030-Regexp/
