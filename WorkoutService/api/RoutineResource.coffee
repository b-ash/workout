_ = require('underscore')
RoutineDao = require('../data/RoutineDao')
Parsers = require('../util/Parsers')

register = (server, basePath, dbRunner) ->
  dao = new RoutineDao(dbRunner)
  path = "#{basePath}/routines"

  server.get path, (req, res) ->
    dao.list _.bind(res.json, res)

  server.post path, (req, res) ->
    if req.body.exercises and req.body.exercises.length > 0
      dao.create(req.body, _.bind(res.json, res))
    else
      res.send(400, "Exercises list is required")

  server.get "#{path}/:id", (req, res) ->
    dao.get req.params.id, _.bind(res.json, res)

  server.put "#{path}/:id", (req, res) ->
    dao.update(req.params.id, req.body, _.bind(res.json, res))

  server.get "#{path}/:id/exercises", (req, res) ->
    dao.exercises req.params.id, (data) ->
      res.json(Parsers.routineExercises(data))

module.exports = {register}
