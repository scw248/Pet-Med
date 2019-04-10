# frozen_string_literal: true

class Pet < ApplicationRecord
  # validates :name, presence: true
  # validates :animal_type, presence: true
  # validates :animal_type, inclusion: { in: TYPES }
  # validates :breed, presence: true
  # validates :breed, inclusion: { in: dog_breed, presence: true }, if: :type_dog
  # validates :breed, inclusion: { in: cat_breed, presence: true }, if: :type_cat
  # validates :breed, inclusion: { in: bunny_breed, presence: true }, if: :type_bunny
  # validates :gender, presence: true
  # validates :gender, inclusion: { in: genders, presence: true }
  # validates :birthdate, presence: true # will probably have to add validation to this field after building form
  # validates :weight, presence: true
  # validates :weight, numericality: { greater_than_or_equal_to: 0 }
  # belongs_to :user
  # has_many :appointments, through: :user

  # https://stackoverflow.com/questions/13465691/validate-on-inclusion-within-array-of-options-or-be-nil
  TYPES = %w[Dog Cat Bunny].freeze

  def dog_breed
    ['Boston Terrier', 'French Bulldog', 'Golden Retriever', 'Black Lab', 'Poodle', 'German Shepherd', 'Beagle', 'Chihuahua', 'Greyhound', 'English Bulldog', 'Pug', 'Siberian Husky', 'Boxer', 'Pointer', 'Yorkshire Terrier', 'Mutt']
  end

  def type_dog
    self.breed = 'Dog'
  end

  def cat_breed
    ['Russian Blue', 'Persian', 'British Shorthair', 'Scottish Fold', 'Siamese', 'Ragdoll', 'Maine Coon', 'Munchkin', 'Sphynx', 'Abyssinian']
  end

  def type_cat
    self.breed = 'Cat'
  end

  def bunny_breed
    ['Holland Lop', 'Rex Rabbit', 'Netherland Dwarf Rabbit', 'Flemish Giant Rabbit', 'Mini Lop']
  end

  def type_bunny
    self.breed = 'Bunny'
  end

  def genders
    %w[Male Female]
  end
end
