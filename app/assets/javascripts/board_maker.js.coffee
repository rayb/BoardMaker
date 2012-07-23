window.BoardMaker =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new BoardMaker.Routers.Boards()
    Backbone.history.start(pushState: false)

$(document).ready ->
  BoardMaker.init()
