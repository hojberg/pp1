class Pp1.Routers.ArtObjects extends Backbone.Router
	routes:
		'': 'index'
		':id': 'show'

	initialize: ->
    @collection = new Pp1.Collections.ArtObjects()
    @collection.fetch({reset: true})

	index: ->
		view = new Pp1.Views.ArtObjectsIndex(collection: @collection)
		$('#container').html(view.render().el)

	show: (id) ->
		alert "ArtObject #{id}"