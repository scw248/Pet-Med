# frozen_string_literal: true

class VetProvider < ApplicationRecord
  has_many :users, through: :appointments

  def vet_names
    ['Oz Animal Hospital', 'Mid North Animal Hospital', 'Old Town Animal Care Center', 'McKillip Animal Hospital', 'Petco Veterinary Services',
     'Gold Coast Animal Hospital', 'Blum Animal Hospital', 'Urban Veterinary Care', 'Veterinary Clinic Pets', 'Wicker Park Veterinary Clinic']
  end

  def vet_locations
    ['620 West Webster Avenue, Chicago, IL',
     '2201 N. Halsted Street, Chicago, IL',
     '511 West North Avenue, Chicago, IL',
     '2867 N. Clark Street, Chicago, IL',
     '3046 N. Halsted Street, Chicago, IL',
     '225 W. Division Street, Chicago, IL',
     '3219 North Clark Street, Chicago, IL',
     '2930 N. Lincoln Avenue, Chicago, IL',
     '3413 N. Broadway Street, Chicago, IL',
     '1166 N. Milwaukee Avenue, Chicago, IL']
  end
end
