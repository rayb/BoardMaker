class BoardMaker.Collections.Boards extends Backbone.Collection

  url: '/api/boards'
  model: BoardMaker.Models.Board

  showExtra: ->
    first = @last()
    first.showMe() if first
#    alert "first name #{first.get('name')}"