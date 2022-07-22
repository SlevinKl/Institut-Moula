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






<%# <nav class="navbar" data-controller="navbar"> %>

        <%#= image_tag 'https://arnaudvallee.com/thumbs/1200x800c/2016-02/1456305881_logoinstitutdebeaute.jpg', class: 'logo-img'%>

    <%# <ul class="nav-menu" data-navbar-target="nav">
        <li class="nav-item"> %>
            <%#= link_to 'ACCEUIL', root_path, class: 'nav-link', data: { action: 'click->navbar#close' } %>
        <%# </li>
        <li class="nav-item"> %>
            <%# = link_to 'PRESTATIONS', prestations_path, class: 'nav-link', data: { action: 'click->navbar#close' }
        </li>
        <li class="nav-item">
            <%#= link_to 'CONTACT', new_contact_path, class: 'nav-link', data: { action: 'click->navbar#close' } %>
        <%# </li>
        <li class="nav-item"> %>
            <%#= link_to 'BLOG', articles_path, class: 'nav-link', data: { action: 'click->navbar#close' } %>
        <%# </li> %>
    <%# </ul>
    <div class="hamburger" data-action="click->navbar#menu" data-navbar-target="hamburger">
        <span class="bar"></span>
        <span class="bar"></span>
        <span class="bar"></span>
    </div> 
<%# </nav> %>
