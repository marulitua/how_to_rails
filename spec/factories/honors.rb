FactoryBot.define do
  factory :user do
    award { Faker::String.random(4) }
    event { Faker::String.random(4) }
    location { "#{Faker::Address.state}, #{Faker::Address.country}" }
    year { rand(2010..2018) }
    user_id nil
  end
end
