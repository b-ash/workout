View = require './View'
Routines = require '../models/Routines'
SelectSlideItemView = require './SelectSlideItem'


class ChooseRoutineView extends View
  tagName: 'div'
  className: 'content'
  template: require './templates/chooseRoutine'

  initialize: ->
    @views.routines = []
    @routines = new Routines

  getRenderData: ->
    dayOfWeek: moment().format('dddd')

  afterRender: ->
    @$routines = @$('#routines')
    @routines.fetch().then(@renderRoutines)

  renderRoutines: =>
    @routines.each (model) =>
      view = new SelectSlideItemView({
          model: model
          template: require('./templates/routineSelectItem')
        })
        .on('select', @routineSelected)
        .render()
      @$routines.append(view.el)
      @views.routines.push(view)
    @

  routineSelected: (routine) ->
    console.log 'Chose routine', routine.toJSON()

module.exports = ChooseRoutineView
