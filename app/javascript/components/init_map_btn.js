const initMapBtn = () => {
  const map = document.getElementById("map");
  const btn_map = document.querySelector(".search-map-btn");
  const list = document.querySelector(".card-container");
  const btn_list = document.querySelector(".search-list-btn");


  if (btn_map) {
    btn_map.addEventListener('click', () => {
      list.classList.add("d-none");
      map.classList.remove("d-none");
      btn_map.classList.add("d-none");
      btn_list.classList.remove("d-none");
    })

    btn_list.addEventListener('click', () => {
      list.classList.remove("d-none");
      map.classList.add("d-none");
      btn_map.classList.remove("d-none");
      btn_list.classList.add("d-none");
    })
  }


}
export {initMapBtn};
