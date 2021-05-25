class Appointment < ApplicationRecord
  before_create :manipulate_date

  belongs_to :user
  belongs_to :dealership
  belongs_to :car

  validates :car_id, presence: true
  validates :user_id, presence: true
  validates :dealership_id, presence: true

  validate :dealership_exist?
  validate :car_exists?

  validate :after_today?

  validate :o_clock_time?

  validate :not_in_the_past?

  validate :after_two_months?

  private
  
  def manipulate_date
    self.start_time = self.start_time.to_datetime
    self.end_time = self.start_time + 30.minutes
  end

  def car_exists?
    if Car.find_by_id(car_id).nil?
      errors.add(:error, "You must select a valid car for the appointment.")
      return
    end
  end
  
  def dealership_exist?
    if Dealership.find_by_id(dealership_id).nil?
      errors.add(:error, "You must select a valid dealership for the appointment.")
      return
    end
  end

  def after_today?
    if start_time < DateTime.tomorrow && start_time.day == DateTime.now.day 
      errors.add(:error, "Sorry. You can't set an appointment in the same day.")
      return
    end
  end

  def o_clock_time?
    if start_time.min != 0 && start_time.min != 30
      errors.add(:error, "Sorry. The appointment can only be setted in 30 min partials. Ie: '15:00' or '15:30'.")
    end
  end

  def not_in_the_past?
    if start_time < DateTime.now
      errors.add(:error, "The appointment can't be set in the past.")
    end
  end

  def after_two_months?
    if start_time > DateTime.now + 2.months
      errors.add(:error, "Sorry. The appointment can't be set past 2 months in the future.")
    end
  end

end
