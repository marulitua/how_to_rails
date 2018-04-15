require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:experiences).dependent(:destroy) }
  it { should have_many(:references).dependent(:destroy) }
  it { should have_many(:honors).dependent(:destroy) }
  it { should have_many(:educations).dependent(:destroy) }
  it { should have_many(:contacts).dependent(:destroy) }
  it { should have_many(:skills).dependent(:destroy) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:dob) }
  it { should validate_presence_of(:position) }
end
