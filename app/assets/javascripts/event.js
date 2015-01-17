$(function() {
  $( "table.events td.title strong" ).on( "click", function(e) {
    $(e.target).parent().parent().find( "table.details" ).toggle(200);
  });
});
