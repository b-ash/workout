_ = require('underscore')
SetDao = require('../data/SetDao')
Parsers = require('../util/Parsers')

register = (server, basePath, dbRunner) ->
  dao = new SetDao(dbRunner)
  path = "#{basePath}/sets"

  server.get "#{path}/users/:user/routines/:routineId", (req, res) ->
    dao.list req.params.user, req.params.routineId, (data) ->
      res.json(Parsers.setsByDay(data))

  server.post path, (req, res) ->
    dao.create req.body, _.bind(res.json, res)

module.exports = {register}
