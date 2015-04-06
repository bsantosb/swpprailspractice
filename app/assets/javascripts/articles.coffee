# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
 $("#count_link").click ->
  $.ajax
   type: "post"
   url: "/articles/count"
   dataType: "json"
   success: (data, status) ->
    $("#count_result").text(data["count"
]+ " object(s)!")