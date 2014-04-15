class window.CodeSample

  constructor: ->
    @el = $('.app-panel.html')
    @html = @el.html()
    @text = htmlToText(@html)

  replace: ->
    $(@el).html("<code><pre>#{@text}</pre></code>")

  example: ->
    $('.app-panel.result').html(@html)
    styleTag = $('<style/>').html($('.app-panel.css pre').text())
    $('head').append(styleTag)

  htmlToText = (html) ->
    codeClean(html.replace(/</g, "&lt;").replace(/>/g, "&gt;"))

  codeClean = (code) ->
    code = code.replace(/(\r\n|\n|\r)/, '')
    leadingSpaces = code.substr(0, code.search(/\S/))
    dirtyCodeArray = code.split(/(\r\n|\n|\r)/g)
    linesArray = []
    for line in dirtyCodeArray
      linesArray.push(line.replace(leadingSpaces, ''))
    linesArray.join('').trim()
