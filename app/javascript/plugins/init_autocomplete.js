import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('place_address');
  if (addressInput) {
    places({ container: addressInput });
  }
  const locationSearch = document.getElementById('place_location');
  if (locationSearch) {
    places({ container: locationSearch });
  }
};

export { initAutocomplete };
