FactoryBot.define do
  factory :user do
    key { Faker::String.random(4) }
    value { Faker::String.random(4) }
    contactable_id nil
    contactable_type nil
  end
end
