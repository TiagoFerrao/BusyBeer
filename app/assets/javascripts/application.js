//= require jquery
//= require rails-ujs
//= require_tree .

function showCategoryRatings(event) {
  $(".category-card").show();
  $("#profile-name").hide();
  $("#profile-anchor").hide();
  $("#profile-jobs-stats").hide();
  $("#profile-description").hide();
  $("#cancelation-card").hide();
  $("#average-card").hide();

  return false;
};



// When clicking on "average rate" hides:
// #profile-name
// #profile-jobs-stats
// #cancelation-card
// #profile-description
