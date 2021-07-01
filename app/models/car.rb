class Car < ApplicationRecord
  has_many :car_models, dependent: :destroy
  has_many :family, through: :car_models, source: :car_family
  has_many :car_paints, dependent: :destroy
  has_many :paints, through: :car_paints
  has_one :car_drive, dependent: :destroy
  has_one :drive, through: :car_drive
  has_one :car_propulsor, dependent: :destroy
  has_one :propulsor, through: :car_propulsor
  has_many :appointments, dependent: :destroy

  scope :all_with_associations, -> { all.includes(:family, :paints) }
end
