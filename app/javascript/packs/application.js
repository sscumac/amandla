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

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initMapbox } from '../plugins/init_mapbox';
import { initOwl } from '../plugins/init_owl';
import { initFilterBtn } from '../components/init_filter_btn';
import { initMapBtn } from '../components/init_map_btn';
import { initStarRating } from '../plugins/init_star_rating';
import { initUserLocation } from '../plugins/init_user_location';
import { initAnswerForm } from '../components/init_answer_form';


// TEMPORARY HERE - UNDER CONSTRUCTION
const previewImageOnFileSelect = () => {
  // we select the photo input
  const input = document.getElementById('photo-input');
  if (input) {
    // we add a listener to know when a new picture is uploaded
    input.addEventListener('change', () => {
      // we call the displayPreview function (who retrieve the image url and display it)
      displayPreview(input);
    })
  }
}

const displayPreview = (input) => {
  if (input.files && input.files[0]) {
    const reader = new FileReader();
    reader.onload = (event) => {
      document.getElementById('photo-preview').src = event.currentTarget.result;
    }
    reader.readAsDataURL(input.files[0])
    document.getElementById('photo-preview').classList.remove('d-none');
  }
}

// ------------------------------

const previewMultipleImagesOnFileSelect = () => {
  // we select the photo input
  const input = document.getElementById('place_photos_venue');
  if (input) {
    // we add a listener to know when a new picture is uploaded
    input.addEventListener('change', () => {
      // we call the displayPreview function (who retrieve the image url and display it)
      displayMultiplePreviews(input);
    })
  }
}

const displayMultiplePreviews = (input) => {
  document.getElementById('results').innerHTML = "";

  if (input.files && input.files[0]) {

    Array.from(input.files).forEach((file) => {
      const reader = new FileReader();
      var img = document.createElement('img');

      reader.onload = (event) => {
        img.src = event.currentTarget.result;
      }
      reader.readAsDataURL(file)

      document.getElementById('results').appendChild(img);

    })

  }
}




// ------------------------------


document.addEventListener('turbolinks:load', () => {
  initAutocomplete();
  initMapbox();
  previewImageOnFileSelect();
  initOwl();
  initFilterBtn();
  initMapBtn();
  initUserLocation();
  previewMultipleImagesOnFileSelect();
  initAnswerForm();
});

initStarRating();


