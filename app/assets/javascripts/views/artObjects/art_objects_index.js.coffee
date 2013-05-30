class Pp1.Views.ArtObjectsIndex extends Backbone.View

  template: JST['artObjects/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(artObjects: @collection))
    this
