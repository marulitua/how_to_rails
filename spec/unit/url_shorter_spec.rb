require './lib/basex.rb'

RSpec.describe 'Encoder & Decoder', type: :request do
  it 'encode base 10 number into base x number' do
    for i in 100..1000
      number = rand(100000000)
      encoded = Basex.encode(number)
      expect(number).to eq(Basex.decode(encoded))
    end
  end
end
