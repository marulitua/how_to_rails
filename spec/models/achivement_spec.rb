require 'rails_helper'

RSpec.describe Achivement, type: :model do
  it { should belong_to(:user) }

  it { should validate_presence_of(:honor) }
  it { should validate_presence_of(:event) }
  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:year) }
end
