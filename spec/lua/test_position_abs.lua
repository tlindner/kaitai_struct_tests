local luaunit = require("luaunit")

require("position_abs")

TestPositionAbs = {}

function TestPositionAbs:test_position_abs()
    local r = PositionAbs:from_file("src/position_abs.bin")

    luaunit.assertEquals(r.index_offset, 0x20)
    luaunit.assertEquals(r.index.entry, "foo")
end
