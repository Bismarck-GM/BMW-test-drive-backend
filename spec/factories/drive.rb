FactoryBot.define do
  factory :drive do
    name { Faker::Name.name }
    shorthand { Faker::Games::HeroesOfTheStorm.battleground }
  end
end
