# frozen_string_literal: true

class VetProvider < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true, uniqueness: true
  has_many :users, through: :appointments
end
