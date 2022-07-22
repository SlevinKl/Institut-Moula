import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["hamburger", "nav"]
  connect() {
    console.log('Connect');
  }

  menu() {
    this.mobile()
  }

  mobile() {
    this.hamburgerTarget.classList.toggle("active")
    this.navTarget.classList.toggle("active")

  }

  close() {
    console.log("close button")
  }

}






