import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["btn"]
  connect() {
    console.log('Connect');
  }

  load() {

  }
}
