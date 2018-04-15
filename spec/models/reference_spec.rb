require 'rails_helper'

RSpec.describe Reference, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:organization) }
  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:position) }

  it { should belong_to(:user) }
end
