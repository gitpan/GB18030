# This file is encoded in GB18030.
die "This file is not encoded in GB18030.\n" if q{あ} ne "\x82\xa0";

use GB18030;
print "1..1\n";

# エラーにはならないけど文字化けする（５）
if (lc('アイウエオ') eq 'アイウエオ') {
    print "ok - 1 lc('アイウエオ') eq 'アイウエオ'\n";
}
else {
    print "not ok - 1 lc('アイウエオ') eq 'アイウエオ'\n";
}

__END__

GB18030.pm の処理結果が以下になることを期待している

if (Egb18030::lc('アイウエオ') eq 'アイウエオ') {

Shift-JISテキストを正しく扱う
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
