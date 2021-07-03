require 'rails_helper'

RSpec.describe Dealership, type: :model do
  # Association test
  describe 'Associations' do
    it { should have_many(:appointments) }
  end
  # Validation tests
  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_length_of(:name).is_at_least(6) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:address) }
  end
end
