local luaunit = require("luaunit")

require("term_strz")

TestTermStrz = {}

function TestTermStrz:test_term_strz()
    local r = TermStrz:from_file("src/term_strz.bin")

    luaunit.assertEquals(r.s1, "foo")
    luaunit.assertEquals(r.s2, "bar")
    luaunit.assertEquals(r.s3, "|baz@")
end
