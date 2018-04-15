FactoryBot.define do
  factory :user do
    name { Faker::StarWars.character }
    address { "#{Faker::Address.street_name} #{Faker::Address.street_address}" }
    dob { Faker::Date.birthday }
    position { Faker::Job.title }
  end

  factory :achivement do
    item { Faker::String.bs }
    experience_id nil
  end

  factory :contact do
    key { Faker::String.random(4) }
    value { Faker::String.random(4) }
    contactable_id nil
    contactable_type nil
  end

  factory :education do
    random_year = rand(2012..2018)
    random_range = rand(1..3)
    degree { Faker::String.random(4) }
    from { random_year }
    add_attribute(:until) { random_year + random_range }
    institution { Faker::University.name }
    location { "#{Faker::Address.state}, #{Faker::Address.country}" }
    user_id nil
  end

  factory :experience do
    random_year = rand(2012..2018)
    random_range = rand(1..3)
    company { Faker::Company.name }
    from { random_year }
    add_attribute(:until) { random_year + random_range }
    location { "#{Faker::Address.state}, #{Faker::Address.country}" }
    position { Faker::Job.title }
    user_id nil
  end

  factory :honor do
    award { Faker::String.random(4) }
    event { Faker::String.random(4) }
    location { "#{Faker::Address.state}, #{Faker::Address.country}" }
    year { rand(2010..2018) }
    user_id nil
  end

  factory :reference do
    name { Faker::HowIMetYourMother.character }
    organization { "#{Faker::Company.suffix} #{Faker::Company.name}" }
    location { "#{Faker::Address.state}, #{Faker::Address.country}" }
    position { Faker::Job.title }
  end

  factory :skill do
    category { Faker::String.random(10) }
    item { Faker::String.random(5) }
    user_id nil
  end
end
