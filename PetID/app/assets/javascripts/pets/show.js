// window.addEventListener('DOMContentLoaded', (event) => {
//   let id = document.querySelector('#pet-container').dataset.id
//   let petID = document.querySelector('#current_pet').dataset.id
//   // if (event.target.url.contains(`http://localhost:3000/users/${id}/pets/${petID}`)) {

//   fetch(`http://localhost:3000/users/${id}/pets/${petID}.json`)
//     .then(res => res.json())
//     .then(pet => {
//       const { id, name, animal_type, breed, gender, birthdate, weight, image } = pet
//       new Pet(id, name, animal_type, breed, gender, birthdate, weight, image)
//     })
//   // }
// })