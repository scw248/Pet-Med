# frozen_string_literal: true

class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :animal_type, :breed, :gender, :birthdate, :weight
  has_many :appointments
  belongs_to :user
end
