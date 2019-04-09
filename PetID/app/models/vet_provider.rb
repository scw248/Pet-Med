class VetProvider < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  has_many :users, through: :appointments
end
