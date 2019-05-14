class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :animal_type, :breed, :gender, :birthdate, :weight
end
