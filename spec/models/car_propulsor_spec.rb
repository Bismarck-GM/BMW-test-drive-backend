require 'rails_helper'

RSpec.describe CarPropulsor, type: :model do
  # Association test
  describe 'Associations' do
    it { should belong_to(:car) }
    it { should belong_to(:propulsor) }
  end
  # Validation tests
end
