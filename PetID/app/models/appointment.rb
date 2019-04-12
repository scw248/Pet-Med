# frozen_string_literal: true

class Appointment < ApplicationRecord
  validates :date_time, presence: true # will need to add validation to this field after building form
  validates :reason_for_visit, presence: true
  # validates :reason_for_visit, inclusion: { in: visit_reasons, presence: true }
  belongs_to :user
  belongs_to :vet_provider
  has_many :pets, through: :user

  def visit_reasons
    ['Dental', 'Medical Exam', 'Medication Refill', 'Net Patient Visit', 'Surgery', 'Wellness Exam', 'Vaccinations']
  end
end
