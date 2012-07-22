class BoardMaker.Views.BoardsIndex extends Backbone.View

  template: JST['boards/index']

  initialize: ->
    @collection.on('reset', @render, this )

  render: ->
    $(@el).html(@template(entries: @collection))
    this
