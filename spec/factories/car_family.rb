FactoryBot.define do
  factory :car_family do
    name { Faker::Name.name }
    description { Faker::Games::HeroesOfTheStorm.battleground }
    img_thumb { Faker::Games::HeroesOfTheStorm.battleground }
    cars { create_cars(3) }
  end
end

def create_family(family_count = 4)
  FactoryBot.create_list(:car_family, family_count)
end
