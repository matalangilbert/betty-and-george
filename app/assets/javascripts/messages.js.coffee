# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  refreshId = setInterval(->
    $.ajax 
      url: '/messages/retrieve?' + "created_at="+$(".created_at:first").text() + "&color="+$("tr:first").attr('id')
  , 5000)
  $.ajaxSetup cache: false
  
# Google +1
(->
  po = document.createElement("script")
  po.type = "text/javascript"
  po.async = true
  po.src = "https://apis.google.com/js/plusone.js"
  s = document.getElementsByTagName("script")[0]
  s.parentNode.insertBefore po, s
)()

# Endless scroll
(->
  nearBottomOfPage = ->
    $(window).scrollTop() > $(document).height() - $(window).height() - 180
  page = 1
  loading = false
  $(window).scroll ->
    return  if loading
    if nearBottomOfPage()
      loading = true
      page++
      $.ajax
        url: "/messages?page=" + page
        type: "get"
        dataType: "script"
        success: ->
          loading = false
)()


