app = require 'Application'


# Base class for all views.
module.exports = class View extends Backbone.View
  views: {}

  template: ->
    return

  getRenderData: ->
    return

  getPartialsRenderData: ->
    {}

  render: (callback) =>
    @_render()
    callback?(@)
    @

  _render: =>
    @$el.html @template @getRenderData(), {partials: @getPartialsRenderData()}
    @afterRender()
    @

  afterRender: ->
    return

  close: =>
    @remove()
    @unbind()
    @onClose?()

  skipLink: (event) ->
    if $(event.target).hasClass('dont-route')
      event.preventDefault()

  routeEvent: (event) =>
    $link = $(event.target)
    event.preventDefault()
    if $link.hasClass('dont-route')
      return true
    else
      @routeLink $link.attr('href')

  routeLink: (url) =>
    app.router.navigate url, {trigger: true}
