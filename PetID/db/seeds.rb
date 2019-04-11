# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create 30 pets, 10 appointments, and 10 vet_providers
Pet.destroy_all
Appointment.destroy_all
VetProvider.destroy_all
pet_1 = Pet.create(name: 'Sam', animal_type: 'Dog', breed: 'Boston Terrier', gender: 'Male', birthdate: 9 / 26 / 12, weight: 35)
pet_2 = Pet.create(name: 'Vinny', animal_type: 'Dog', breed: 'French Bulldog', gender: 'Male', birthdate: 8 / 22 / 15, weight: 45)
pet_3 = Pet.create(name: 'Cooper', animal_type: 'Dog', breed: 'Golden Retriever', gender: 'Male', birthdate: 11 / 12 / 10, weight: 35)
pet_4 = Pet.create(name: 'Sam', animal_type: 'Dog', breed: 'Black Lab', gender: 'Male', birthdate: 9 / 26 / 12, weight: 35)
pet_5 = Pet.create(name: 'Sam', animal_type: 'Dog', breed: 'Poodle', gender: 'Male', birthdate: 9 / 26 / 12, weight: 35)
pet_6 = Pet.create(name: 'Sam', animal_type: 'Dog', breed: 'German Shepherd', gender: 'Male', birthdate: 9 / 26 / 12, weight: 35)
pet_7 = Pet.create(name: 'Sam', animal_type: 'Dog', breed: 'Beagle', gender: 'Male', birthdate: 9 / 26 / 12, weight: 35)
pet_8 = Pet.create(name: 'Sam', animal_type: 'Dog', breed: 'Chihuahua', gender: 'Male', birthdate: 9 / 26 / 12, weight: 35)
pet_9 = Pet.create(name: 'Sam', animal_type: 'Dog', breed: 'Greyhound', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)
pet_10 = Pet.create(name: 'Sam', animal_type: 'Dog', breed: 'English Bulldog', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)
pet_11 = Pet.create(name: 'Sam', animal_type: 'Dog', breed: 'Pug', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)
pet_12 = Pet.create(name: 'Sam', animal_type: 'Dog', breed: 'Siberian Husky', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)
pet_13 = Pet.create(name: 'Sam', animal_type: 'Dog', breed: 'Boxer', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)
pet_14 = Pet.create(name: 'Sam', animal_type: 'Dog', breed: 'Pointer', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)
pet_15 = Pet.create(name: 'Sam', animal_type: 'Dog', breed: 'Yorkshire Terrier', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)
pet_15 = Pet.create(name: 'Sam', animal_type: 'Dog', breed: 'Mutt', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)

pet_16 = Pet.create(name: 'Sam', animal_type: 'Cat', breed: 'Russian Blue', gender: 'Male', birthdate: 9 / 26 / 12, weight: 35)
pet_17 = Pet.create(name: 'Sam', animal_type: 'Cat', breed: 'Persian', gender: 'Male', birthdate: 9 / 26 / 12, weight: 35)
pet_18 = Pet.create(name: 'Sam', animal_type: 'Cat', breed: 'British Shorthair', gender: 'Male', birthdate: 9 / 26 / 12, weight: 35)
pet_19 = Pet.create(name: 'Sam', animal_type: 'Cat', breed: 'Scottish Fold', gender: 'Male', birthdate: 9 / 26 / 12, weight: 35)
pet_20 = Pet.create(name: 'Sam', animal_type: 'Cat', breed: 'Siamese', gender: 'Male', birthdate: 9 / 26 / 12, weight: 35)
pet_21 = Pet.create(name: 'Sam', animal_type: 'Cat', breed: 'Ragdoll', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)
pet_22 = Pet.create(name: 'Sam', animal_type: 'Cat', breed: 'Maine Coon', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)
pet_23 = Pet.create(name: 'Sam', animal_type: 'Cat', breed: 'Munchkin', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)
pet_24 = Pet.create(name: 'Sam', animal_type: 'Cat', breed: 'Sphynx', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)
pet_25 = Pet.create(name: 'Sam', animal_type: 'Cat', breed: 'Abyssinian', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)

pet_26 = Pet.create(name: 'Sam', animal_type: 'Bunny', breed: 'Holland Lop', gender: 'Male', birthdate: 9 / 26 / 12, weight: 35)
pet_27 = Pet.create(name: 'Sam', animal_type: 'Bunny', breed: 'Rex Rabbit', gender: 'Male', birthdate: 9 / 26 / 12, weight: 35)
pet_28 = Pet.create(name: 'Sam', animal_type: 'Bunny', breed: 'Netherland Dwarf Rabbit', gender: 'Male', birthdate: 9 / 26 / 12, weight: 35)
pet_29 = Pet.create(name: 'Sam', animal_type: 'Bunny', breed: 'Flemish Giant Rabbit', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)
pet_30 = Pet.create(name: 'Sam', animal_type: 'Bunny', breed: 'Mini Lop', gender: 'Female', birthdate: 9 / 26 / 12, weight: 35)

appt_1 = Appointment.create(reason_for_visit: 'Dental', date_time: 2019-05-12 14:00:00)
appt_2 = Appointment.create(reason_for_visit: 'Medical Exam', date_time: 2019-05-12 14:00:00)
appt_3 = Appointment.create(reason_for_visit: 'Medication Refill', date_time: 2019-05-12 14:00:00)
appt_4 = Appointment.create(reason_for_visit: 'New Patient Visit', date_time: 2019-05-12 14:00:00)
appt_5 = Appointment.create(reason_for_visit: 'Surgery', date_time: 2019-05-12 14:00:00)
appt_6 = Appointment.create(reason_for_visit: 'Welness Exam', date_time: 2019-05-12 14:00:00)
appt_7 = Appointment.create(reason_for_visit: 'Vaccinations', date_time: 2019-05-12 14:00:00)

vet_1 = VetProvider.create(name: 'Oz Animal Hospital', location: '620 West Webster Avenue, Chicago, IL')
vet_2 = VetProvider.create(name: 'Mid North Animal Hospital', location: '2201 N. Halsted Street, Chicago, IL')
vet_3 = VetProvider.create(name: 'Old Town Animal Care Center', location: '511 West North Avenue, Chicago, IL')
vet_4 = VetProvider.create(name: 'McKillip Animal Hospital', location: '2867 N. Clark Street, Chicago, IL')
vet_5 = VetProvider.create(name: 'Petco Veterinary Services', location: '3046 N. Halsted Street, Chicago, IL')
vet_6 = VetProvider.create(name: 'Gold Coast Animal Hospital', location: '225 W. Division Street, Chicago, IL')
vet_7 = VetProvider.create(name: 'Blum Animal Hospital', location: '3219 North Clark Street, Chicago, IL')
vet_8 = VetProvider.create(name: 'Urban Veterinary Care', location: '2930 N. Lincoln Avenue, Chicago, IL')
vet_9 = VetProvider.create(name: 'Veterinary Clinic Pets', location: '3413 N. Broadway Street, Chicago, IL')
vet_10 = VetProvider.create(name: 'Wicker Park Veterinary Clinic', location: '1166 N. Milwaukee Avenue, Chicago, IL')
