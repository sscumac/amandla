
// const location = document.querySelector(".search-bar");

function initUserLocation() {
  // select button for my location
  const myLocation = document.querySelector("#my_location")
  console.log(myLocation);
  // add listener to button
  if (myLocation) {
    myLocation.addEventListener("click", (event) => {
      // use .getCurrentPosition to get location from browser:
      event.preventDefault();
      navigator.geolocation.getCurrentPosition((data) => {
        const lat = data.coords.latitude;
        const lon = data.coords.longitude;
        window.location.href = `/places?place[location]=${lat},${lon}`
      });
    });
  }

  // location.innerHTML = `${data.name}, ${data.sys.country}`;
  
}

export { initUserLocation };
