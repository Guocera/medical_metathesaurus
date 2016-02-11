$(document).ready(function() {

  $.getJSON('/search', 
    function(results) {
      console.log(results);
      var table = $('#search').find('tbody').empty();
    })
    .fail(function(e) {
      console.log(e);
    });

});
