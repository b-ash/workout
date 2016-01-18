exercise = (e) ->
  {
    exercise: e.exercise
    position: e.position
    description: e.description or ''
    type: e.type
  }

module.exports = {exercise}
