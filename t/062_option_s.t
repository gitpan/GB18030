# This file is encoded in GB18030.
die "This file is not encoded in GB18030.\n" if q{あ} ne "\x82\xa0";

use GB18030;
print "1..1\n";

my $__FILE__ = __FILE__;

# s///g
$a = "ABCDEFGHIJCLMNOPQRSTUVWXYZ";

if ($a =~ s/[CC]/あいう/g) {
    if ($a eq "ABあいうDEFGHIJあいうLMNOPQRSTUVWXYZ") {
        print qq{ok - 1 \$a =~ s/[CC]/あいう/g ($a) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 \$a =~ s/[CC]/あいう/g ($a) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 \$a =~ s/[CC]/あいう/g ($a) $^X $__FILE__\n};
}

__END__
