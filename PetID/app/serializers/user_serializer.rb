class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :pets
  has_many :appointments
end
