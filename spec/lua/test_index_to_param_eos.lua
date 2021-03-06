local luaunit = require("luaunit")

require("index_to_param_eos")

TestIndexToParamEos = {}

function TestIndexToParamEos:test_index_to_param_eos()
    local r = IndexToParamEos:from_file("src/index_sizes.bin")

    luaunit.assertEquals(r.qty, 3)

    luaunit.assertEquals(r.sizes[1], 1)
    luaunit.assertEquals(r.sizes[2], 8)
    luaunit.assertEquals(r.sizes[3], 4)

    luaunit.assertEquals(r.blocks[1].buf, "A")
    luaunit.assertEquals(r.blocks[2].buf, "BBBBBBBB")
    luaunit.assertEquals(r.blocks[3].buf, "CCCC")
end
