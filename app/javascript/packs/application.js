// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
import "bootstrap";































































document.addEventListener('turbolinks:load', () => {
  document
  .getElementById("show-button")
  .addEventListener("click", function(event) {
    event.preventDefault();
    console.log('I am a piece of shit that does not work')
    document.getElementById("show-button").classList.toggle("d-none")
    // hide the lorem ipsum text
    document.getElementById("new-topic").classList.toggle("d-none")

});
})


const spans = document.querySelectorAll(".span-subdiscu");
spans.forEach((span) => {
  span.addEventListener("click", (event) => {
    document.querySelectorAll(".sub-comments").forEach((subComment) => {
      if (subComment.classList.contains("d-none")) {

      } else {
        subComment.classList.add("d-none")
      }
    });
    let id = event.currentTarget.dataset.subid;
    document.getElementById(`span_${id}`).classList.remove("d-none")
  })
})
