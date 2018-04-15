FactoryBot.define do
  factory :user do
    name { Faker::HowIMetYourMother.character }
    organization { "#{Faker::Company.suffix} #{Faker::Company.name}" }
    location { "#{Faker::Address.state}, #{Faker::Address.country}" }
    position { Faker::Job.title }
  end
end
