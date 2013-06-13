class Pp1.Views.Entry extends Backbone.View

  tagName: "tr"

  template: JST['artObjects/entry']

  events:
    'click a.destroy': 'removeEntry'

  render: ->
    $(@el).html(@template(entry: @model))
    this

  removeEntry: (event) ->
  	event.preventDefault()
  	@model.destroy()