# Autogenerated from KST: please remove this line if doing any edits by hand!

package spec::perl::TestExpr2;

use strict;
use warnings;
use base qw(Test::Class);
use Test::More;
use Expr2;

sub test_expr_2: Test(17) {
    my $r = Expr2->from_file('src/str_encodings.bin');

    is($r->str1()->len_orig(), 10, 'Equals');
    is($r->str1()->len_mod(), 7, 'Equals');
    is($r->str1()->str(), "Some AS", 'Equals');
    is($r->str1_len(), 7, 'Equals');
    is($r->str1_len_mod(), 7, 'Equals');
    is($r->str1_byte1(), 73, 'Equals');
    is($r->str1_avg(), 73, 'Equals');
    is($r->str1_char5(), "e", 'Equals');
    is($r->str1_tuple5()->byte0(), 101, 'Equals');
    is($r->str1_tuple5()->byte0(), 101, 'Equals');
    is($r->str1_tuple5()->byte1(), 32, 'Equals');
    is($r->str1_tuple5()->byte2(), 65, 'Equals');
    is($r->str1_tuple5()->avg(), 48, 'Equals');
    is($r->str2_tuple5()->byte0(), 101, 'Equals');
    is($r->str2_tuple5()->byte1(), 32, 'Equals');
    is($r->str2_tuple5()->byte2(), 65, 'Equals');
    is($r->str2_tuple5()->avg(), 48, 'Equals');
}

Test::Class->runtests;
