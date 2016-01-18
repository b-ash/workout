_ = require('underscore')
SetDao = require('../data/SetDao')
Parsers = require('../util/Parsers')

register = (server, basePath, dbRunner) ->
  dao = new SetDao(dbRunner)
  path = "#{basePath}/sets/users/:userId/routines/:routineId"

  server.get path, (req, res) ->
    dao.list req.params.userId, req.params.routineId, (data) ->
      res.json(Parsers.setsByDay(data))

module.exports = {register}
