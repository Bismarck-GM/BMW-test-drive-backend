FactoryBot.define do
  factory :propulsor do
    name { Faker::Name.name }
    energy { Faker::Games::HeroesOfTheStorm.battleground }
  end
end
