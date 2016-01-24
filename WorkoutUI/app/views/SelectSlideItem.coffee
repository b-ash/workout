View = require './View'


class SelectSlideItemView extends View
  tagName: 'li'
  events:
    'click a': 'skipLink'
    'click .toggle': 'toggle'
    'click .select': 'select'

  initialize: ({@template}) ->

  getRenderData: ->
    @model.toJSON()

  select: ->
    @trigger('select', @model)

  toggle: ->
    @$('.hidden').slideToggle()


module.exports = SelectSlideItemView
