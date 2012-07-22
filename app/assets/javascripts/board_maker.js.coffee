window.BoardMaker =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new BoardMaker.Routers.Boards()
    Backbone.history.start()

$(document).ready ->
  BoardMaker.init()
