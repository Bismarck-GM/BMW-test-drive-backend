require 'rails_helper'

RSpec.describe Paint, type: :model do
  # Association test
  it { should have_many(:car_paints) }
  it { should have_many(:cars).through(:car_paints) }

  # Validation tests
end
