require 'rails_helper'

RSpec.describe Education, type: :model do
  it { should belong_to(:user) }

  it { should validate_presence_of(:degree) }
  it { should validate_presence_of(:from) }
  it { should validate_presence_of(:until) }
  it { should validate_presence_of(:institution) }
  it { should validate_presence_of(:location) }
end
