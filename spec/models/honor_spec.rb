require 'rails_helper'

RSpec.describe Honor, type: :model do
  it { should belong_to(:user) }

  it { should validate_presence_of(:award) }
  it { should validate_presence_of(:event) }
  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:year) }
end
