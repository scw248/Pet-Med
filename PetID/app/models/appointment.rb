# frozen_string_literal: true

class Appointment < ApplicationRecord
  # validates :validate_appt
  validates :reason_for_visit, presence: true
  # validates :reason_for_visit, inclusion: { in: visit_reasons, presence: true }
  validates :vet_provider, presence: true
  belongs_to :user
  belongs_to :vet_provider
  has_many :pets, through: :user

  def self.visit_reasons
    [ 'Dental', 'Medical Exam', 'Medication Refill', 'Net Patient Visit', 'Surgery', 'Wellness Exam', 'Vaccinations']
  end

  private

  def validate_appt
      if date_time.present? && date_time > Date.today
          errors.add(:date_time, 'Appointments Must Be Booked At Least One Day in Advance')
      end
  end
end
