require 'rails_helper'

RSpec.describe Contact, type: :model do
  it { should validate_presence_of(:key) }
  it { should validate_presence_of(:value) }
end
