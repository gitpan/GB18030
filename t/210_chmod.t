# This file is encoded in GB18030.
die "This file is not encoded in GB18030.\n" if q{あ} ne "\x82\xa0";

my $__FILE__ = __FILE__;

use GB18030;
print "1..1\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

open(FILE,'>F機能') || die "Can't open file: F機能\n";
print FILE "1\n";
close(FILE);

# chmod
if (chmod(0755,'F機能') == 1) {
    print "ok - 1 chmod $^X $__FILE__\n";
}
else {
    print "not ok - 1 chmod: $! $^X $__FILE__\n";
}

unlink('F機能');

__END__
