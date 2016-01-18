_ = require('underscore')

exercise = (e) ->
  clone = _.clone(e)
  clone.description ?= ''
  clone

set = (s) ->
  clone = _.pick(s, 'exercise', 'exerciseType', 'notes', 'position', 'reps', 'weight')
  clone.notes ?= ''
  clone

setsByDay = (data) ->
  unless data and data.length
    return {}

  {routine, user} = _.first(data)
  output = {routine, user, sets: []}

  setsForDay =
    date: null
    sets: []

  for s in data
    setsForDay.date ?= s.dateInt
    if setsForDay.date isnt s.dateInt
      output.sets.push(setsForDay)
      setsForDay =
        date: s.dateInt
        sets: []
    setsForDay.sets.push(set(s))
  output.sets.push(setsForDay)

  return output

module.exports = {exercise, set, setsByDay}
