FactoryBot.define do
  factory :car do
    name { 'Some Car' }
    code { 'XXX69' }
    model_year { 2021 }
    hp { 666 }
    mpg { 1 }
    accel { 5.5 }
    msrp { 69_000 }
    img_thumb { 'Some URL' }
  end
end
