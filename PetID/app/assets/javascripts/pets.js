// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/



class Pet {
  constructor(id, name, animal_type, breed, gender, birthdate, weight, appointments) {
    this.id = id
    this.name = name
    this.animal_type = animal_type
    this.breed = breed
    this.gender = gender
    this.birthdate = birthdate
    this.weight = weight
    this.appointments = appointments
    this.render()
  }

  petHTML() {
    return `
  <div>
    <ul class="image-list-small">
      <div class="details">
      <h3>${this.name}</h3>
        <div class="image-details">
          <p>Gender: ${this.gender}</p>
          <p>${this.animal_type} - ${this.breed}</p>
          <p>Weight: ${this.weight}</p>
          <p>Birthday: ${this.birthdate}</p>
          <button class="delete" data-id="${this.id}">Delete</button>
          <br>
          <br>
          <div>Appointments</div>
          <p>${this.appointments.map(appt => {
      return (
        new Date(appt.date_time).toLocaleDateString('en-GB', {
          day: 'numeric',
          month: 'short',
          year: 'numeric'
        })
      )
    })}
        </div >
      </div >
    </ul >
  </div >
  <br>`
  }

  deletePet(e) {
    let id = document.querySelector('#pet-container').dataset.id
    let petID = document.querySelector('#current_pet').dataset.id
    fetch(`http://localhost:3000/users/${id}/pets/${petID}`, {
      method: 'DELETE'
    })
      .then(() => {
        document.getElementById('pet-container')
          .removeChild(document.getElementById(petID))
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


function formatDate(date) {
  var hours = date.getHours();
  var minutes = date.getMinutes();
  var ampm = hours >= 12 ? 'pm' : 'am';
  hours = hours % 12;
  hours = hours ? hours : 12; // the hour '0' should be '12'
  minutes = minutes < 10 ? '0' + minutes : minutes;
  var strTime = hours + ':' + minutes + ' ' + ampm;
  return date.getMonth() + 1 + "/" + date.getDate() + "/" + date.getFullYear() + "  " + strTime;
}


