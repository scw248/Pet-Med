class Appointment < ApplicationRecord
  validates :date_time, presence: true
  validates :reason_for_visit, presence: true
  belongs_to :user
  belongs_to :vet_provider
end
