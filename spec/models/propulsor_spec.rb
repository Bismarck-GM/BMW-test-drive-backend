require 'rails_helper'

RSpec.describe Propulsor, type: :model do
  # Association test
  it { should have_many(:car_propulsors) }
  it { should have_many(:cars).through(:car_propulsors) }

  # Validation tests
end
