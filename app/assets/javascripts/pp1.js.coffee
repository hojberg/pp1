window.Pp1 =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
  	new Pp1.Routers.ArtObjects()
  	Backbone.history.start()

$(document).ready ->
  Pp1.initialize()
