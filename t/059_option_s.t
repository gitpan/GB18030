# This file is encoded in GB18030.
die "This file is not encoded in GB18030.\n" if q{��} ne "\x82\xa0";

use GB18030;
print "1..1\n";

my $__FILE__ = __FILE__;

# s///g
$a = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

if ($a =~ s/[C]/������/g) {
    if ($a eq "AB������DEFGHIJKLMNOPQRSTUVWXYZ") {
        print qq{ok - 1 \$a =~ s/[C]/������/g ($a) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 \$a =~ s/[C]/������/g ($a) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 \$a =~ s/[C]/������/g ($a) $^X $__FILE__\n};
}

__END__
