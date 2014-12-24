//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/


// ACTIVITIES: Add Activities

function addTextField(first) {
  var remove = first ? '</div>' : '<a href="#" class="remove_field">Remove field</a></div>';
  var emptyField = '<div><input class="activity_name" name="activity[name][]" placeholder="Activity Name" type="text">';
  emptyField = emptyField + remove;
  $(".input-field form").append(emptyField);
}

$(function() {
  addTextField(true);
  $("#add-field").click(function(event) {
    event.preventDefault();
    //find a way to get each of these name values different for params
    addTextField(false);
  });

  $(".input-field").on("click",".remove_field", function(event){ //user click on remove text
    event.preventDefault(); $(this).parent('div').remove();
  });

});
