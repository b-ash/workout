View = require './View'
RoutineHistoryView = require './RoutineHistory'
Routines = require '../models/Routines'


class IndexView extends View
  tagName: 'div'
  className: 'content'
  template: require './templates/index'

  initialize: ->
    @routines = new Routines

  getRenderData: ->
    dayOfWeek: moment().format('dddd')

  afterRender: ->
    @$history = @$('#history')
    @routines.history().then(@renderRoutineHistory)

  renderRoutineHistory: =>
    @routines.each (model) =>
      @$history.append(new RoutineHistoryView({model}).render().el)
    @


module.exports = IndexView
