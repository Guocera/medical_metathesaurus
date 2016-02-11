'use strict';
$(document).ready(function() {

  $.getJSON('/search', 
    function(results) {
      console.log(results);
      var table = $("#search").find("tbody").empty();
      var tr = table.append("<tr>");
      tr.append('<td>').text(results);

    })
    .fail(function(e) {
      console.log(e);
    });

});
