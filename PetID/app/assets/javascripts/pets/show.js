window.addEventListener('DOMContentLoaded', (event) => {
  let id = document.querySelector('#pet-container').dataset.id
  let pet_id = document.querySelector('#current_pet').dataset.id
  fetch(`http://localhost:3000/users/${id}/pets/${pet_id}.json`)
    .then(res => res.json())
    .then(pet => {
      const { id, name, animal_type, breed, gender, birthdate, weight, image } = pet
      new Pet(id, name, animal_type, breed, gender, birthdate, weight, image)
    })
})