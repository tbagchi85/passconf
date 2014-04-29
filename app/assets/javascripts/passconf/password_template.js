  $('.passwordconfirmationDialog').on('click',function(e){
  e.stopPropagation();
  e.preventDefault();
  var link_name = $(this).data('link-name');
  var controller_name = $(this).data('controller-name');
  $(this).addClass('uniqueClassForPasswordTemplate');
  $('.password_modal').remove();
  $('<div class="password_modal modalDialog"/>').appendTo('body');
  $.ajax({
    url: "passconf/password_confirmations/password_dialog",
    type: "GET",
    dataType: "script",
    data: {link_name: link_name, controller_name: controller_name}
  });
});
