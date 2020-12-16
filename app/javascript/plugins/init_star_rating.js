import "jquery-bar-rating";
import $ from 'jquery';

const initStarRating = () => {
  const stars = document.getElementById("review_rating");

  if (stars) {
    $('#review_rating').barrating({
      theme: 'fontawesome-stars',
      icon: 'test'
    });
  }
};

export { initStarRating };

//theme: 'css-stars'

