class Pet < ApplicationRecord
  belongs_to :user
  has_many :appointments, through: :user
end
