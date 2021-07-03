class Propulsor < ApplicationRecord
  has_many :car_propulsors
  has_many :cars, through: :car_propulsors
end
