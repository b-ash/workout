_ = require('underscore')

exercise = (e) ->
  clone = _.clone(e)
  clone.description ?= ''
  clone

set = (s) ->
  clone = _.clone(s)
  clone.notes ?= ''
  clone

module.exports = {exercise, set}
