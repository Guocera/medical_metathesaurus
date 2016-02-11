'use strict';
$(document).ready(function() {

  $.getJSON('/search', 
    function(results) {
      console.log(results);

      showResults(results);
    })
    .fail(function(e) {
      console.log(e);
    });

});

function showResults(results) {
    console.log(results);
    var table = $("#search").find("tbody").empty();
    results.data.cuis.list.forEach(function(result) {
      table.append("<tr>");
      var tr = $("#search").find("tr").last();
      tr.append('<td>');
      var td = tr.find("td");
      td.text(result.cui);
    });
  }