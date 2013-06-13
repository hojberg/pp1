class Pp1.Views.ArtObjectsIndex extends Backbone.View

  url: 'api/art_objects'

  el: ".main-body"

  tagName: "section"

  template: JST['artObjects/index']

  events:
    'submit #new_entry': 'createEntry'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendEntry, this)
    @collection.on('destroy', @render, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendEntry)
    this

  appendEntry: (entry) ->
    view = new Pp1.Views.Entry(model: entry)
    $('#entries').append(view.render().el)

  createEntry: (event) ->
    event.preventDefault()
    @collection.create name: $('#new_entry_name').val()


