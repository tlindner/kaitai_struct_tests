require 'eof_exception_bytes'

RSpec.describe EofExceptionBytes do
  it 'parses test properly' do
    expect {
      r = EofExceptionBytes.from_file('src/term_strz.bin')
    }.to raise_error(EOFError)
  end
end
