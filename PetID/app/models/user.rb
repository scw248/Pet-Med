# frozen_string_literal: true

class User < ApplicationRecord
  #associations
  has_many :pets
  has_many :appointments
  has_many :vet_providers, through: :appointments
  accepts_nested_attributes_for :pets
  accepts_nested_attributes_for :appointments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  devise :omniauthable, omniauth_providers: [:facebook]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end

  def has_pets
    !pets.empty?
  end

  def has_appointments
    !appointments.empty?
  end
end
