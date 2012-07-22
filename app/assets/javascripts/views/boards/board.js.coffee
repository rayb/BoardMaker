class BoardMaker.Views.Board extends Backbone.View

  template: JST['boards/board']
  tagName: 'li'

  initialize: ->
    @model.on('change', @render, this)

  render: ->
    $(@el).html(@template(board: @model))
    this
