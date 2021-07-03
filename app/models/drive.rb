class Drive < ApplicationRecord
  has_many :car_drives, class_name: 'CarDrive'
  has_many :cars, through: :car_drives
end
