# This file is encoded in GB18030.
die "This file is not encoded in GB18030.\n" if q{あ} ne "\x82\xa0";

my $__FILE__ = __FILE__;

use GB18030;
print "1..1\n";

my $chcp = `chcp`;
if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms or $chcp !~ /932|936/oxms) {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

open(FILE,'>F機能') || die "Can't open file: F機能\n";
print FILE "1\n";
close(FILE);

# stat
if (stat('F機能')) {
    print "ok - 1 stat $^X $__FILE__\n";
}
else {
    print "not ok - 1 stat: $! $^X $__FILE__\n";
}

unlink('F機能');

__END__
