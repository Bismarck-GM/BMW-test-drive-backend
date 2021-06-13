require 'rails_helper'

RSpec.describe CarPaint, type: :model do
  # Association test
  it { should belong_to(:car) }
  it { should belong_to(:paint) }

  # Validation tests
end
