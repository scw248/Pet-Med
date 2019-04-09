class Pet < ApplicationRecord
  validates :name, presence: true
  validates :animal_type, presence: true
  validates :breed, presence: true
  validates :gender, presence: true
  validates :birthdate, presence: true
  validates :weight, presence: true
  belongs_to :user
  has_many :appointments, through: :user
end
