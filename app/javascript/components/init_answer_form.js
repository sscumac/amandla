const initAnswerForm = () => {
  const answer_form = document.getElementById("answer-form");
  const btns = document.querySelectorAll(".answer-section .btn-dark-green");
  // const body_filter = document.querySelector("body");

  if (btns) {
    btns.forEach((btn) => {
      btn.addEventListener('click', (event) => {
        event.preventDefault();
        // btn.classList.add("d-none");
        btn.parentElement.nextElementSibling.classList.toggle("d-none");
        if (btn.innerText === "NOT NOW") {
          btn.innerText = "REPLY"
        }
        else {
          btn.innerText = "NOT NOW"
        };
      });
    });
  }
}

export { initAnswerForm };