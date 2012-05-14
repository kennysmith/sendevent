# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


jQuery ->
 user.setupForm()

user =
  setupForm: ->
    $('#signup').submit ->
      $('input[type=submit]').attr('disabled', true)
      if $('#user_plan_id').length
        user.processSignup()
        false
      else
        window.location.replace("http://stackoverflow.com");
  
  processSignup: ->
    $('#signup')[0].submit()
  