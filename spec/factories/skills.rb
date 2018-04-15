FactoryBot.define do
  factory :user do
    category { Faker::String.random(10) }
    item { Faker::String.random(5) }
    user_id nil
  end
end
