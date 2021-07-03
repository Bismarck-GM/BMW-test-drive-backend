class Dealership < ApplicationRecord
  has_many :appointments
  validates :name, presence: true, uniqueness: true, length: { minimum: 6 }
  validates :country, presence: true
  validates :city, presence: true
  validates :address, presence: true
end
