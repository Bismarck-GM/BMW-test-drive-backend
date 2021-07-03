class Paint < ApplicationRecord
  has_many :car_paints
  has_many :cars, through: :car_paints
end
