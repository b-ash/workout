class Routine extends Backbone.Model

  parse: (json) ->
    if json.dateInt
      json.date = moment.utc("#{json.dateInt}", 'YYYYMMDD').format('dddd, MMMM Do YYYY')
    json

module.exports = Routine
