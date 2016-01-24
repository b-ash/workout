View = require './View'
Exercises = require '../models/Exercises'
Routine = require '../models/Routine'
SelectSlideItemView = require './SelectSlideItem'

VALIDATE_ERROR = "Whoa there cowpoke, fill in the blanks."
NO_EXERCISES_ERROR = "Whoa there cowpoke, you need to pick some exercises."
API_ERROR = "There was an error. Try saving again."

class CreateRoutine extends View
  tagName: 'div'
  className: 'content'
  template: require './templates/createRoutine'
  events:
    'click button': 'createRoutine'

  initialize: ->
    @exercises = new Exercises
    @routine = new Routine
    @routineExercises = []

  getRenderData: ->
    exercises: @exercises.toJSON()

  render: (callback) ->
    @exercises.fetch().always(=>
      super(callback)
    )

  afterRender: ->
    @$errorMsg = @$('#error_msg')
    @renderExercises()

  renderExercises: =>
    $exercises = @$('#exercises ul')
    exercisesByType = @exercises.groupBy (exercise) -> exercise.get('type')

    for type, exercises of exercisesByType
      view = new SelectSlideItemView({
          model:
            type: type
            exercises: exercises
            toJSON: -> {
              type: type
              exercises: (e.toJSON() for e in exercises)
            }
          template: require('./templates/exerciseSelectItem')
        })
        .on('select', @exerciseSelected)
        .render()
      $exercises.append(view.el)
    @

  exerciseSelected: (model) ->
    console.log 'added exercise', model

  createRoutine: (event) ->
    event.preventDefault()

    routine = new Routine
      name: @$('form [name="name"]').val()
      description: @$('form [name="description"]').val()
      exercises = ({
        id: e.id
        position: i
      } for e, i in @routineExercises)

    if not routine.get('name').length
      return @onValidateFail()
    else if not routine.get('exercises').length
      return @onExerciseValidateFail()

    routine.save()
      .fail(@onApiFail)
      .then(-> app.router.navigate('', true))

  onValidateFail: =>
    @$errorMsg.text(VALIDATE_ERROR).show()

  onExerciseValidateFail: =>
    @$errorMsg.text(NO_EXERCISES_ERROR).show()

  onApiFail: =>
    @$errorMsg.text(API_ERROR).show()


module.exports = CreateRoutine
