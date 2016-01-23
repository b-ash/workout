View = require './View'


class CreateExerciseView extends View
  tagName: 'div'
  className: 'content'
  template: require './templates/createExercise'

module.exports = CreateExerciseView
