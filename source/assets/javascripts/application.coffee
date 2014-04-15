window.setHeight = ->
  height = $(window).height() - $('.app-header').height()
  $('.app-scroller').height(height)


$ =>

  # Build code samples and result
  sample = new CodeSample()
  sample.replace()
  sample.example()

  # Height calculation
  setHeight()
  $(window).resize ->
    setHeight()

  # Navigation toggle
  $("#toggle").click (e)->
    e.preventDefault()
    $('.app-sidebar').toggleClass('closed')
