# This file is encoded in GB18030.
die "This file is not encoded in GB18030.\n" if q{��} ne "\x82\xa0";

use GB18030;
print "1..1\n";

my $__FILE__ = __FILE__;

$a = "�A�\�A";
if ($a =~ s/(�A([�C�\�E])�A)//) {
    if ($1 eq "�A�\�A") {
        if ($2 eq "�\") {
            print qq{ok - 1 "�A�\�A" =~ s/(�A([�C�\�E])�A)// \$1=($1), \$2=($2) $^X $__FILE__\n};
        }
        else {
            print qq{not ok - 1 "�A�\�A" =~ s/(�A([�C�\�E])�A)// \$1=($1), \$2=($2) $^X $__FILE__\n};
        }
    }
    else {
        print qq{not ok - 1 "�A�\�A" =~ s/(�A([�C�\�E])�A)// \$1=($1), \$2=($2) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 "�A�\�A" =~ s/(�A([�C�\�E])�A)// \$1=($1), \$2=($2) $^X $__FILE__\n};
}

__END__