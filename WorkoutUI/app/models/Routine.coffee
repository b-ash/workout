class Routine extends Backbone.Model

  defaults: ->
    routineExercises: []

  parse: (json) ->
    if json.dateInt
      json.date = moment.utc("#{json.dateInt}", 'YYYYMMDD').format('dddd, MMMM Do YYYY')
    json

module.exports = Routine
