// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

// # $(function () {
// #   listenForClick()
// # })

// # function listenForClick() {
// #   $('#card').on('click', function (event) {
// #     event.preventDefault()
// #     getPets()
// #   })
// # }

// # function getPets(){
// # fetch('http://localhost:3000/users/${id}/pets')
// #   .then(res => res.json())
// #   .then(pets => {
// #     pets.forEach(pet => {
// #       # const pet = { id, name, animal_type, breed, gender, birthdate, weight, image }
// #       new Pet(id, name, animal_type, breed, gender, birthdate, weight, image)
// #     })
// #   })
// # }


window.addEventListener('DOMContentLoaded', (event) => {
  let id = document.querySelector('#pet-container').dataset.id
  fetch(`http://localhost:3000/users/${id}/pets.json`)
    .then(res => res.json())
    .then(pets => {
      pets.forEach(pet => {
        const { id, name, animal_type, breed, gender, birthdate, weight, image } = pet
        new Pet(id, name, animal_type, breed, gender, birthdate, weight, image)
        debugger;
      })
    })
  console.log('hi')
})

class Pet {
  constructor(obj) {
    this.id = obj.id
    this.name = obj.name
    this.animal_type = obj.animal_type
    this.breed = obj.breed
    this.gender = obj.gender
    this.birthdate = obj.birthdate
    this.weight = obj.weight
    this.image = obj.image
    this.render()
  }

  petHTML() {
    return `
  <div>
    <ul class="image-list-small">
      <a style="background-image: url('${this.image}');"></a>
      <div class="details">
      <h3>${this.name}</h3>
        <div class="image-details">
          <p>Gender: ${this.gender}</p>
          <p>${this.animal_type} - ${this.breed}</p>
          <p>Weight: ${this.weight}</p>
          <p>Birthday: ${this.birthdate}</p>
        </div>
      </div>
    </ul>
  </div>`
  }

  deletePet(e) {
    const id = e.target.dataset.id
    fetch(`http://localhost:3000/users/${id}/pets/${id}`, {
      method: 'DELETE'
    })
      .then(() => {
        document.getElementById('pet-container')
          .removeChild(document.getElementById(id))
      })
  }

  render() {
    const petContainer = document.getElementById('pet-container')
    const petCard = document.createElement('div')

    petCard.classList.add('pet-card')
    petCard.id = this.id
    petCard.innerHTML += this.petHTML()
    petContainer.appendChild(petCard)
  }
}