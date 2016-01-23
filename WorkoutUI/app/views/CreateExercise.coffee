View = require './View'
ExerciseTypes = require '../models/ExerciseTypes'


class CreateExerciseView extends View
  tagName: 'div'
  className: 'content'
  template: require './templates/createExercise'

  initialize: ->
    @exerciseTypes = new ExerciseTypes

  getRenderData: ->
    types: @exerciseTypes.toJSON()

  render: (callback) ->
    @exerciseTypes.fetch().always(=>
      super(callback)
    )

module.exports = CreateExerciseView
