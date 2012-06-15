# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  refreshId = setInterval(->
    $.ajax url: "http://hollow-flower-9984.herokuapp.com/messages/retrieve"
  , 9000)
  $.ajaxSetup cache: false