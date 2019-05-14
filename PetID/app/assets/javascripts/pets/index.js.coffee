fetch('http://localhost:3000/users/${id}/pets')
  .then(res => res.json())
  .then(pets => {
    pets.forEach(pet => {
      const pet = { id, name, animal_type, breed, gender, birthdate, weight, image }
      // new Pet(id, name, animal_type, breed, gender, birthdate, weight, image)
    })
  })