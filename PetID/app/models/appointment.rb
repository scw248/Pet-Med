class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :vet_provider
end
