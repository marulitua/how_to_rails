require 'rails_helper'

RSpec.describe Contact, type: :model do
  it { should validate_presence_of(:key) }
  it { should validate_presence_of(:value) }

  #it { is_expected.to have_db_column(:contactable_id).of_type(:integer) }
  #it { is_expected.to have_db_column(:contactable_type).of_type(:string) }

  #it { is_expected.to belong_to(:contactable) }
end
