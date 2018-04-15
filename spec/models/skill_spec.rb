require 'rails_helper'

RSpec.describe Skill, type: :model do
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:item) }
end
