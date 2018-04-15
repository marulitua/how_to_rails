FactoryBot.define do
  factory :user do
    name { Faker::StarWars.character }
    address { "#{Faker::Address.street_name} #{Faker::Address.street_address}" }
    dob { Faker::Date.birthday }
    position { Faker::Job.title }
  end
end
