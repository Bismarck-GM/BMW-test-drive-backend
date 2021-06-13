require 'rails_helper'

RSpec.describe CarDrive, type: :model do
  # Association test
  it { should belong_to(:car) }
  it { should belong_to(:drive) }

  # Validation tests
end
