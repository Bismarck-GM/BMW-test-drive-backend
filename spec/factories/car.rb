FactoryBot.define do
  factory :car do
    name { Faker::Games::HeroesOfTheStorm.hero }
    code { 'XXX69' }
    model_year { 2021 }
    hp { Faker::Number.number(digits: 3) }
    mpg { Faker::Number.number(digits: 2) }
    accel { Faker::Number.decimal(l_digits: 1, r_digits: 1) }
    msrp { Faker::Number.number(digits: 5) }
    img_thumb { 'Some URL' }
    drive
    paints { FactoryBot.create_list(:paint, 5) }
    propulsor
  end
end
def create_cars(cars_count = 15)
  FactoryBot.create_list(:car, cars_count)
end
