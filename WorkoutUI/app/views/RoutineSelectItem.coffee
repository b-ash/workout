View = require './View'


class RoutineSelectItemView extends View
  tagName: 'div'
  className: 'routine-select-item'
  template: require './templates/routineSelectItem'
  events:
    'click a': 'skipLink'
    'click .btn': 'toggleRoutine'
    'click .select': 'selectRoutine'

  getRenderData: ->
    @model.toJSON()

  selectRoutine: ->
    @trigger('select', @model)

  toggleRoutine: ->
    @$('div').slideToggle()


module.exports = RoutineSelectItemView
