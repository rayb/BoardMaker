class BoardMaker.Views.BoardsIndex extends Backbone.View

  template: JST['boards/index']

  events:
    'submit #new_board': "createBoard"

  createBoard: (event) ->
    event.preventDefault()
    @collection.create name: $('#new_board_name').val()


  initialize: ->
    @collection.on('reset', @render, this )
    @collection.on('add', @render, this )

  render: ->
    $(@el).html(@template(entries: @collection))
    this
