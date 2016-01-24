View = require './View'
ExerciseTypes = require '../models/ExerciseTypes'
Exercise = require '../models/Exercise'


VALIDATE_ERROR = "Whoa there cowpoke, fill in the blanks."
API_ERROR = "There was an error. Try saving again."


class CreateExerciseView extends View
  tagName: 'div'
  className: 'content'
  template: require './templates/createExercise'
  events:
    'click button': 'createExercise'

  initialize: ->
    @exerciseTypes = new ExerciseTypes

  getRenderData: ->
    types: @exerciseTypes.toJSON()

  render: (callback) ->
    @exerciseTypes.fetch().always(=>
      super(callback)
    )

  afterRender: ->
    @$errorMsg = @$('#error_msg')

  createExercise: (event) ->
    event.preventDefault()

    exercise = new Exercise
      name: @$('form [name="name"]').val()
      description: @$('form [name="description"]').val()
      type: @$('form [name="type"]').val()

    if not exercise.get('name').length
      return @onValidateFail()

    exercise.save()
      .fail(@onApiFail)
      .then(-> app.router.navigate('', true))

  onValidateFail: =>
    @$errorMsg.text(VALIDATE_ERROR).show()

  onApiFail: =>
    @$errorMsg.text(API_ERROR).show()

module.exports = CreateExerciseView
