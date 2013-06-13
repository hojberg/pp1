class Pp1.Views.ArtObjectsShow extends Backbone.View

  el: ".main-body"

  tagName: "section"

  template: JST['artObjects/show']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    @art_object = @collection.get(@id)
    $(@el).html(@template(entry: @art_object))
    this
    