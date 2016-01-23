View = require './View'


class RoutineHistoryView extends View
  tagName: 'div'
  className: 'content'
  template: require './templates/routineHistory'

  getRenderData: ->
    @model.toJSON()


module.exports = RoutineHistoryView
