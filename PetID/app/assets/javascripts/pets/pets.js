// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/



class Pet {
  constructor(id, name, animal_type, breed, gender, birthdate, weight, image) {
    this.id = id
    this.name = name
    this.animal_type = animal_type
    this.breed = breed
    this.gender = gender
    this.birthdate = birthdate
    this.weight = weight
    this.image = image
    this.render()
  }

  petHTML() {
    return `
  <div>
    <ul class="image-list-small">
    <img src="${this.image}"/>
      <div class="details">
      <h3>${this.name}</h3>
        <div class="image-details">
          <p>Gender: ${this.gender}</p>
          <p>${this.animal_type} - ${this.breed}</p>
          <p>Weight: ${this.weight}</p>
          <p>Birthday: ${this.birthdate}</p>
          <button class="delete" data-id="${this.id}">Delete</button>
        </div >
      </div >
    </ul >
  </div >
  <br>`
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
    petCard.addEventListener('click', e => {
      if (e.target.className.includes('delete')) this.deletePet(e)
    })
  }
}




