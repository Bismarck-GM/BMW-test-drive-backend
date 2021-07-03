require 'rails_helper'

RSpec.describe CarModel, type: :model do
  # Association test
  describe 'Associations' do
    it { should belong_to(:car) }
    it { should belong_to(:car_family) }
  end
  # Validation tests
end
