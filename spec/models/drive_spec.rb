require 'rails_helper'

RSpec.describe Drive, type: :model do
  # Association test
  describe 'Associations' do
    it { should have_many(:car_drives).class_name('CarDrive') }
    it { should have_many(:cars).through(:car_drives) }
  end
  # Validation tests
end
