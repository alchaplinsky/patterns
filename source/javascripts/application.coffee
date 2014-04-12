window.setHeight = ->
  height = $(window).height() - $('.app-header').height()
  $('.app-scroller').height(height)

$ =>
  setHeight()
  $(window).resize ->
    setHeight()

  $("#toggle").click (e)->
    e.preventDefault()
    $('.app-sidebar').toggleClass('closed')
