$(document).on("turbolinks:load",function() {
  $('.complete-checkbox').click(function() {
    $(this).parent('form').submit();
  });
})