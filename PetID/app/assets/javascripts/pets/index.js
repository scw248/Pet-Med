window.addEventListener('DOMContentLoaded', (event) => {
  let id = document.querySelector('#pets-container').dataset.id
  fetch(`http://localhost:3000/users/${id}/pets.json`)
    .then(res => res.json())
    .then(pets => {
      pets.forEach(pet => {
        const { id, name, animal_type, breed, gender, birthdate, weight, image } = pet
        new Pet(id, name, animal_type, breed, gender, birthdate, weight, image)
      })
    })
})

document.querySelector('#form').addEventListener('submit', addPet())

function addPet(e) {
  e.preventDefault()
  let data = {

    'name': e.target.name.value,
    'animal_type': e.target.animal_type.value,
    'breed': e.target.breed.value,
    'gender': e.target.gender.value,
    'birthdate': e.target.birthdate.value,
    'weight': e.target.weight.value,
    'image': e.target.image.value
  }
  let id = document.querySelector('#pets-container').dataset.id
  fetch(`http://localhost:3000/users/${id}/pets`, {
    method: 'POST',
    body: JSON.stringify(data),
    headers: {
      'Content-Type': 'application/json'
    }
  })
    .then(res => res.json())
    .then(pets => {
      pets.forEach(pet => {
        const { id, name, animal_type, breed, gender, birthdate, weight, image } = pet
        new Pet(id, name, animal_type, breed, gender, birthdate, weight, image)
        document.getElementById('form').reset()
      })
    })
}