# Autogenerated from KST: please remove this line if doing any edits by hand!

require 'cast_nested'

RSpec.describe CastNested do
  it 'parses test properly' do
    r = CastNested.from_file('src/switch_opcodes.bin')

    expect(r.opcodes_0_str.value).to eq "foobar"
    expect(r.opcodes_0_str_value).to eq "foobar"
    expect(r.opcodes_1_int.value).to eq 66
    expect(r.opcodes_1_int_value).to eq 66
  end
end