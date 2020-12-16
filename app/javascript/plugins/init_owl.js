import 'owl.carousel/dist/assets/owl.carousel.css';
import 'owl.carousel';

const initOwl = () => {
  const carousel = document.querySelector(".owl-carousel");

  if (carousel) {
    $(document).ready(function(){
      $(".owl-carousel").owlCarousel({
        items: 1
      });
    });
  }

}

export { initOwl };
