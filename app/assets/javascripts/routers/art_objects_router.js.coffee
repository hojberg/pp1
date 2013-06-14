class Pp1.Routers.ArtObjects extends Backbone.Router
	routes:
		'art_objects': 'index'
		'art_objects/:id': 'show'
		'art_objects/:id/edit': 'edit'

	initialize: ->
    @collection = new Pp1.Collections.ArtObjects()
    @collection.fetch({reset:true})

  show: (id) ->
    view = new Pp1.Views.ArtObjectsShow(collection: @collection, id: id)

	index: ->
		view = new Pp1.Views.ArtObjectsIndex(collection: @collection)

	edit: (id) ->
		view = new Pp1.Views.ArtObjectsEdit(collection: @collection, id: id)
