require 'rails_helper'

RSpec.describe Url, type: :model do
  it { should validate_presence_of(:origin) }
end
