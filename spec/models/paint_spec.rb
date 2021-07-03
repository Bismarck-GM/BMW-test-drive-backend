require 'rails_helper'

RSpec.describe Paint, type: :model do
  # Association test
  describe 'Associations' do
    it { should have_many(:car_paints) }
    it { should have_many(:cars).through(:car_paints) }
  end
  # Validation tests
end
