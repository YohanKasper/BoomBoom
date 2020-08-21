const toggleStarsInBlack = (rating) => {
  for (let index = 1; index <= 5; index++) {
    const star = document.getElementById(index);
    if (index <= rating) {
      star.className = "review-rating fas fa-star"
    } else {
      star.className = "review-rating far fa-star"
    }
  }
};

const updateRatingInput = (rating) => {
  const formInput = document.getElementById('review_rating')
  formInput.value = rating
}
const dynamicRating = () => {
  const stars = document.querySelectorAll('.review-rating');
  if ( stars.length > 0) {
    stars.forEach((star) => {
      star.addEventListener("click", (event) => {
        const rating = event.currentTarget.id
        updateRatingInput(rating);
        toggleStarsInBlack(rating);
        star.classList.add("selected")
      });
      star.addEventListener("mouseover", (event) => {
        const rating = event.currentTarget.id
        if (!(document.querySelector(".selected"))) {
          toggleStarsInBlack(rating);
        }
      });
    });
  };
};

export { dynamicRating };
