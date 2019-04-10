# frozen_string_literal: true

class Pet < ApplicationRecord
  validates :name, presence: true
  validates :animal_type, presence: true
  validates :animal_type, inclusion: { in: types, presence: true }
  validates :breed, presence: true
  validates :breed, inclusion: { in: dog_breed, presence: true }, if: :type_dog
  validates :breed, inclusion: { in: cat_breed, presence: true }, if: :type_cat
  validates :breed, inclusion: { in: bunny_breed, presence: true }, if: :type_bunny
  validates :gender, presence: true
  validates :birthdate, presence: true
  validates :weight, presence: true # weight should be a positive number
  belongs_to :user
  has_many :appointments, through: :user

  def types
    %w[Dog Cat Bunny]
  end

  def dog_breed
    ['Boston Terrier', 'French Bulldog', 'Golden Retriever', 'Black Lab', 'Poodle', 'German Shepherd', 'Beagle', 'Chihuahua', 'Greyhound', 'English Bulldog', 'Pug', 'Siberian Husky', 'Boxer', 'Pointer', 'Yorkshire Terrier', 'Mutt']
  end

  def type_dog
    self.breed = 'Dog'
  end

  def cat_breed
    []
  end

  def type_cat
    self.breed = 'Cat'
  end

  def bunny_breed
    []
  end

  def type_bunny
    self.breed = 'Bunny'
  end
end
