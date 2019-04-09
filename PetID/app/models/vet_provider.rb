class VetProvider < ApplicationRecord
  has_many :users, through: :appointments
end
