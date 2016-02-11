'use strict';
$(document).ready(function() {

  var showResults = function(results) {
    var table = $("#search").find("tbody").empty();
    results.data.cuis.list.forEach(function(result) {
      table.append("<tr>");
      var tr = $("#search").find("tr").last();
      tr.append('<td>');
      var td = tr.find("td");
      debugger
      td.text(result.cui);
    });
  };

  $.getJSON('/search', 
    function(results) {
      console.log(results);

      showResults(results);
    })
    .fail(function(e) {
      console.log(e);
    });

});
