class Pp1.Views.ArtObjectsEdit extends Backbone.View

	el: '.main-body'

	template: JST['artObjects/edit']

	tagName: "section"

	events:
    'submit #new_entry': 'update'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendEntry, this)

  render: ->
    @art_object = @collection.get(@id)
    $(@el).html(@template(entry: @art_object))
    this
    
  createEntry: (event) ->
    event.preventDefault()
    @collection.create name: $('#new_entry_name').val()

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()
    @art_object.save name: $('#new_entry_name').val()