Routine = require './Routine'


class Routines extends Backbone.Collection

  model: Routine
  url: '/api/routines'

  history: =>
    @fetch {url: "/api/routines/users/#{app.user.get('name')}/history"}


module.exports = Routines
