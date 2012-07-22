class BoardMaker.Views.BoardsIndex extends Backbone.View

  template: JST['boards/index']

  render: ->
    $(@el).html(@template())
    this
