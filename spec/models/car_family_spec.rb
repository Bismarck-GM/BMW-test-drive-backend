require 'rails_helper'

RSpec.describe CarFamily, type: :model do
  # Association test
  describe 'Associations' do
    it { should have_many(:car_models) }
    it { should have_many(:cars).through(:car_models) }
  end
end
