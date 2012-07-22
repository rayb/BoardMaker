class BoardMaker.Models.Board extends Backbone.Model

  showMe: ->
    @set(show: true)
    @save()
    @trigger('highlight')