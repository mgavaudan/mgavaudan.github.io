$(document).ready(function() {
  $("#container_2").children().prop('disabled',true);
  $("#container_3").children().prop('disabled',true);

  $( "#circle_1" ).click(function() {
    $( "this" ).css( "background-color", "white" );
    $( "this" ).slideToggle( "slow", function() {
      $( "#container_2" ).prop('disabled', false);
    });
  });


  $( "#circle_2" ).click(function() {
    $( "this" ).slideToggle( "slow", function() {
      $( "#container_2" ).show();
    });
  });


});
