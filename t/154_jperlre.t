# This file is encoded in GB18030.
die "This file is not encoded in GB18030.\n" if q{��} ne "\x82\xa0";

use GB18030;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('��e��' =~ /(��[^����]��)/) {
    if ("$1" eq "��e��") {
        print "ok - 1 $^X $__FILE__ ('��e��' =~ /��[^����]��/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('��e��' =~ /��[^����]��/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('��e��' =~ /��[^����]��/).\n";
}

__END__