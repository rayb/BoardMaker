class BoardMaker.Views.Board extends Backbone.View

  template: JST['boards/board']
  tagName: 'li'

  events:
#    'click': 'showEntry'
    'click': 'deleteEntry'

  initialize: ->
    @model.on('change', @render, this)
    @model.on('highlight', @highlightWinner, this)

  render: ->
    $(@el).html(@template(board: @model))
    this

  highlightWinner: ->
    $('.winner').removeClass('highlight')
    @$('.winner').addClass('highlight')

#  showEntry: ->
#    Backbone.history.navigate("boards/#{@model.get('id')}", true)

  deleteEntry: ->
    Backbone.history.navigate("boards/#{@model.get('id')}", true)
