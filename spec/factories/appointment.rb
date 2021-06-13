FactoryBot.define do
  factory :appointment do
    user factory: :user, username: 'Sarasa', email: 'massarasa@asd.com'
    dealership
    car
    start_time { DateTime.tomorrow }
    car_id { 1 }
    dealership_id { 1 }
    user_id { 1 }
  end
end
