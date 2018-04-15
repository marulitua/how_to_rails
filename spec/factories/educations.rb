FactoryBot.define do
  factory :user do
    random_year = rand(2012..2018)
    random_range = rand(1..3)
    degree { Faker::String.random(4) }
    from { random_year }
    until { random_year + random_range }
    institution { Faker::University.name }
    location { "#{Faker::Address.state}, #{Faker::Address.country}" }
    user_id nil
  end
end
