FactoryBot.define do
  factory :user do
    item{ Faker::String.bs }
    experience_id nil
  end
end
