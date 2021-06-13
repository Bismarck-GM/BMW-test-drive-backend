require 'rails_helper'

RSpec.describe Dealership, type: :model do
  # Association test
  it { should have_many(:appointments) }

  # Validation tests
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_length_of(:name).is_at_least(6) }
  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:address) }
end
