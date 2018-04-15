require 'rails_helper'

RSpec.describe Experience, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:achivements) }

  it { should validate_presence_of(:company) }
  it { should validate_presence_of(:position) }
  it { should validate_presence_of(:from) }
  it { should validate_presence_of(:until) }
  it { should validate_presence_of(:location) }
end
