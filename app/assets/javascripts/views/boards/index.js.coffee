class BoardMaker.Views.BoardsIndex extends Backbone.View

  template: JST['boards/index']

  events:
    'submit #new_board': "createBoard"
    'click #extra' : "showExtra"
    'click #kill' : "killLine"

  initialize: ->
    @collection.on('reset', @render, this )
    @collection.on('add', @appendBoard, this )

  render: ->
    $(@el).html(@template(entries: @collection))
    @collection.each(@appendBoard)
    this

  appendBoard: (board) =>
    view = new BoardMaker.Views.Board(model: board)
    @$('#boards').append(view.render().el)

  createBoard: (event) ->
    event.preventDefault()
    @collection.create name: $('#new_board_name').val()

  showExtra: (event) =>
    event.preventDefault()
#    alert 'showing extra'
    @collection.showExtra()

  killLine: (event) =>
    event.preventDefault()
    alert 'killing'

