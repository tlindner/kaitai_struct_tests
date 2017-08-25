local luaunit = require("luaunit")

require("expr_mod")

TestExprMod = {}

function TestExprMod:test_expr_mod()
    local r = ExprMod:from_file("src/fixed_struct.bin")

    luaunit.assertEquals(r.int_u, 1262698832)
    luaunit.assertEquals(r.int_s, -52947)

    luaunit.assertEquals(r.mod_pos_const, 9)
    luaunit.assertEquals(r.mod_neg_const, 4)
    luaunit.assertEquals(r.mod_pos_seq, 5)
    luaunit.assertEquals(r.mod_neg_seq, 2)
end