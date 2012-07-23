class BoardMaker.Routers.Boards extends Backbone.Router

  routes:
  # test in play search branch
    '' : 'index'
    'boards/:id': 'show'


  initialize: ->
    @collection = new BoardMaker.Collections.Boards()
    @collection.reset($('#container').data('boards'))

  index: ->
    view = new BoardMaker.Views.BoardsIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    bye = @collection.get(id)
    bye.destroy()
    @collection.remove(bye)


