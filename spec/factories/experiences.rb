FactoryBot.define do
  factory :user do
    random_year = rand(2012..2018)
    random_range = rand(1..3)
    company { Faker::Company.name }
    from { random_year }
    until { random_year + random_range }
    location { "#{Faker::Address.state}, #{Faker::Address.country}" }
    position { Faker::Job.title }
    user_id nil
  end
end
