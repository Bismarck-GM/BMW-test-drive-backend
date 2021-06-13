require 'rails_helper'

RSpec.describe CarModel, type: :model do
  # Association test
  it { should belong_to(:car) }
  it { should belong_to(:car_family) }

  # Validation tests
end
