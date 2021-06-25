FactoryBot.define do
  factory :paint do
    name { Faker::Name.name }
    code { Faker::Games::HeroesOfTheStorm.battleground }
    rgb { Faker::Color.color_name }
    price_mod { Faker::Number.number(digits: 3) }
  end
end
