import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="project-status"
export default class extends Controller {
  connect() {
    console.log("ProjectStatusController connected")
  }

  submitForm(event) {
    console.log('submitted')
    this.element.requestSubmit()
  }
}
