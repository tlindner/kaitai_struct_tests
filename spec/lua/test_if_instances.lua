local luaunit = require("luaunit")

require("if_instances")

TestIfInstances = {}

function TestIfInstances:test_if_instances()
    local r = IfInstances:from_file("src/fixed_struct.bin")

    luaunit.assertNil(r.never_happens)
end
