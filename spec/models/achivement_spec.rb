require 'rails_helper'

RSpec.describe Achivement, type: :model do
  it { should belong_to(:experience) }

  it { should validate_presence_of(:item) }
end
