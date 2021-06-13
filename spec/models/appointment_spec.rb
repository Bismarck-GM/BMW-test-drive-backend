require 'rails_helper'

RSpec.describe Appointment, type: :model do
  # FactoryBot.create(:appointment)
  # Association test
  it { should belong_to(:user) }
  it { should belong_to(:car) }
  it { should belong_to(:dealership) }

  # Validation tests
  it { should validate_presence_of(:car_id) }
  it { should validate_presence_of(:dealership_id) }
  it { should validate_presence_of(:user_id) }
  it { should allow_value(DateTime.tomorrow).for(:start_time) }
end
