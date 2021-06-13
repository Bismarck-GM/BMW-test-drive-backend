FactoryBot.define do
  factory :user do
    sequence(:username) { Faker::Name.last_name }
    sequence(:email) { Faker::Internet.email }
    password { 'foobar' }
    admin { false }
  end
end
