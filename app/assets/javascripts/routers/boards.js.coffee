class BoardMaker.Routers.Boards extends Backbone.Router

  routes:
    '' : 'index'

  initialize: ->
    @collection = new BoardMaker.Collections.Boards()
    @collection.reset($('#container').data('boards'))

  index: ->
    view = new BoardMaker.Views.BoardsIndex(collection: @collection)
    $('#container').html(view.render().el)