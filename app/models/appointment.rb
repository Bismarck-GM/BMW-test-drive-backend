class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :dealership

  validate :after_today?

  validate :o_clock_time?

  validate :not_in_the_past?

  validate :after_two_months?

  private

  def after_today?
    if start_time < DateTime.tomorrow && start_time.day == DateTime.now.day 
      errors.add(:start_time, "Sorry. You can't set an appointment in the same day.")
      return
    end
  end

  def o_clock_time?
    if start_time.min != 0 && start_time.min != 30
      errors.add(:start_time, "Sorry. The appointment can only be setted in 30 min partials. Ie: '15:00' or '15:30'.")
    end
  end

  def not_in_the_past?
    if start_time < DateTime.now
      errors.add(:start_time, "The appointment can't be set in the past.")
    end
  end

  def after_two_months?
    if start_time > DateTime.now + 2.months
      errors.add(:start_time, "Sorry. The appointment can't be set past 2 months in the future.")
    end
  end

end
