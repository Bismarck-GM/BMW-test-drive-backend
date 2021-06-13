require 'rails_helper'

RSpec.describe CarPropulsor, type: :model do
  # Association test
  it { should belong_to(:car) }
  it { should belong_to(:propulsor) }

  # Validation tests
end
