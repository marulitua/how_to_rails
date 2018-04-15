RSpec.describe 'Encoder & Decoder', type: :request do
  it 'encode base 10 number into base x number' do
    encoded = BaseX.encode(10)
    expect(encoded).to eq(45)
  end

  it 'decode base x number into base 10 number' do
    decoded = BaseX.encode(45)
    expect(decoded).to eq(10)
  end
end
