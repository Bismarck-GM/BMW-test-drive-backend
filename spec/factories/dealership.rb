FactoryBot.define do
  factory :dealership do
    name { Faker::Name.name }
    country { Faker::Games::HeroesOfTheStorm.battleground }
    city { Faker::Games::HeroesOfTheStorm.battleground }
    address { Faker::Games::HeroesOfTheStorm.quote }
  end
end

def create_dealerships(dealerships_count = 15)
  FactoryBot.create_list(:dealership, dealerships_count)
end
