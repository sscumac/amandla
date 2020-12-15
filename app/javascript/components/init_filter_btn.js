const initFilterBtn = () => {
  const list = document.getElementById("search-filter");
  const btn = document.getElementById("search-filter-btn");
  const body_filter = document.querySelector("body");

  btn.addEventListener('click', () =>{
    list.classList.remove("d-none");
    body_filter.classList.add("no-scroll");
  })
}

export {initFilterBtn};
