# This file is encoded in GB18030.
die "This file is not encoded in GB18030.\n" if q{あ} ne "\x82\xa0";

use GB18030;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あいq' =~ /(あい+いう)/) {
    print "not ok - 1 $^X $__FILE__ not ('あいq' =~ /あい+いう/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('あいq' =~ /あい+いう/).\n";
}

__END__
