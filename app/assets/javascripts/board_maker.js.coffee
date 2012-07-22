window.BoardMaker =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new BoardMaker.Routers.Boards()
    Backbone.history.start(pushState: true)

$(document).ready ->
  BoardMaker.init()
