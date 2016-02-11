$(document).ready(function() {

  $.getJSON('/search', 
    function(data) {
      console.log(data);
      console.log('hi');
    })
    .fail(function(e) {
      console.log(e);
    });

});
