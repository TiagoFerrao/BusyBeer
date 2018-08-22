function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var jobAddress = document.getElementById('job_address');

    if (jobAddress) {
      var autocomplete = new google.maps.places.Autocomplete(jobAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(jobAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
