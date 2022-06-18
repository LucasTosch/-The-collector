// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"

// const playerFilter = (link) => {
//   const searchTerm = document.querySelector(".search-elements > input").value
//   if (searchTerm === "") {
//     link.href =`${document.location.href}?filter=player`
//   } else {
//     link.href =`${document.location.href}&filter=player`
//   }
// };

const playerLink = document.querySelector("#player-button > a")
const traderLink = document.querySelector("#trader-button > a")
const searchTerm = document.querySelector(".search-elements > input").value

  if (searchTerm === "") {
    playerLink.href =`${document.location.href}?filter=player`
  } else {
    playerLink.href =`${document.location.href}&filter=player`
  }
;
  if (searchTerm === "") {
    traderLink.href =`${document.location.href}?filter=trader`
  } else {
    traderLink.href =`${document.location.href}&filter=trader`
  }
;
