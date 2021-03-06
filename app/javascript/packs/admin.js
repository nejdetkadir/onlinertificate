// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "semantic-ui-sass"
import "jquery-mask-plugin"

window.jQuery = $;
window.$ = $;

$(document).on('turbolinks:load', function() {

  $('#menutoggle').click(function() {
    $('.ui.sidebar').sidebar('toggle');
  });

  $('.ui.dropdown').dropdown();

  $(document).ready( function () {
    $('#datatable').DataTable();
  });

  $('.message .close')
  .on('click', function() {
    $(this)
      .closest('.message')
      .transition('fade')
    ;
  }); 

  $("#phone").mask("(999) 999-9999"); 
});