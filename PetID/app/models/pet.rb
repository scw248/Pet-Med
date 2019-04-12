# frozen_string_literal: true

class Pet < ApplicationRecord
  validates :name, presence: true
  validates :animal_type, presence: true
  # validates :animal_type, inclusion: { in: self.allowed_types, presence: true }
  validates :breed, presence: true
  # validates :breed, inclusion: { in: self.allowed_breeds, presence: true }, 
  validates :gender, presence: true
  # validates :gender, inclusion: { in: self.allowed_genders, presence: true }
  validate :validate_age
  validates :weight, presence: true
  validates :weight, numericality: { greater_than_or_equal_to: 0 }
  # validates :image, presence: true
  belongs_to :user
  has_many :appointments, through: :user

  # https://stackoverflow.com/questions/13465691/validate-on-inclusion-within-array-of-options-or-be-nil
  def self.allowed_types
    %w[Dog Cat Bunny]
  end

  def self.allowed_breeds
    ['Boston Terrier', 'French Bulldog', 'Golden Retriever', 'Black Lab', 'Poodle', 'German Shepherd', 'Beagle', '
    Chihuahua', 'Greyhound', 'English Bulldog', 'Pug', 'Siberian Husky', 'Boxer', 'Pointer', 'Yorkshire Terrier', 
    'Mutt', 'Russian Blue', 'Persian', 'British Shorthair', 'Scottish Fold', 'Siamese', 'Ragdoll', 'Maine Coon', 
    'Munchkin', 'Sphynx', 'Abyssinian', 'Holland Lop', 'Rex Rabbit', 'Netherland Dwarf Rabbit', 
    'Flemish Giant Rabbit', 'Mini Lop']
  end

  def self.allowed_genders
    %w[Male Female]
  end

  scope :birthdate, -> {where(birthdate: Date.today)}

  private

  def validate_age
      if birthdate.present? && birthdate > 1.day.ago
          errors.add(:birthdate, 'Your Pet Should Be Over 1 Day Old.')
      end
  end
end
