FactoryBot.define do
  factory :appointment do
    start_time { DateTime.tomorrow }
    car
    dealership
    user
  end
end
