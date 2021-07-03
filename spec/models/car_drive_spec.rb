require 'rails_helper'

RSpec.describe CarDrive, type: :model do
  # Association test
  describe 'Associations' do
    it { should belong_to(:car) }
    it { should belong_to(:drive) }
  end

  # Validation tests
end
