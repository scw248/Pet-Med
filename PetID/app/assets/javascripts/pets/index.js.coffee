fetch('http://localhost:3000/users/${id}/pets')
  .then(res => res.json())
  .then(pets => {
    pets.forEach(pet => {
      const pet = { id, name, animal_type, breed, gender, birthdate, weight, image }
      new Pet(id, name, animal_type, breed, gender, birthdate, weight, image)
    })
  })

  document.querySelector('#buttons').addEventListener('click', addPet)

function addPet(e){
  e.preventDefault()
  let data = {
    'name': e.target.name.value,
    'animal_type': e.target.animal_type.value,
    'breed': e.target.breed.checked,
    'gender': e.target.gender.value,
    'birthdate': e.target.birthdate.value,
    'weight': e.target.weight.value,
    'image': e.target.img.value
  }
  fetch('http://localhost:3000/users/${id}/pets', {
    method: 'POST',
    body: JSON.stringify(data),
    headers: {
      'Content-Type': 'application/json'
    }
  })
    .then(res => res.json())
  .then(pets => {
    pets.forEach(pet => {
      const pet = { id, name, animal_type, breed, gender, birthdate, weight, image }
      new Pet(id, name, animal_type, breed, gender, birthdate, weight, image)
      document.getElementById('hog-form').reset()
    })
  })
      

