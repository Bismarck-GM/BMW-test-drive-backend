class CarModel < ApplicationRecord
  belongs_to :car
  belongs_to :car_family
end
