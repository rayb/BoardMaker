class BoardMaker.Routers.Boards extends Backbone.Router

  routes:
    '' : 'index'

  index: ->
    view = new BoardMaker.Views.BoardsIndex()
    $('#container').html(view.render().el)