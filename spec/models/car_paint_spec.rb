require 'rails_helper'

RSpec.describe CarPaint, type: :model do
  # Association test
  describe 'Associations' do
    it { should belong_to(:car) }
    it { should belong_to(:paint) }
  end
  # Validation tests
end
