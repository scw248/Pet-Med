# frozen_string_literal: true

class Pet < ApplicationRecord
  validates :name, presence: true
  validates :animal_type, presence: true
  # validates :animal_type, inclusion: { in: types, presence: true } # can use helper
  validates :breed, presence: true
  validates :gender, presence: true
  validates :birthdate, presence: true
  validates :weight, presence: true # weight should be a positive number
  belongs_to :user
  has_many :appointments, through: :user

  def types
    # [Pet.all.pluck(:animal_type).uniq]
  end
end
