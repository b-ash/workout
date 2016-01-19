_ = require('underscore')
ExerciseDao = require('../data/ExerciseDao')

register = (server, basePath, dbRunner) ->
  dao = new ExerciseDao(dbRunner)
  path = "#{basePath}/exercises"

  server.get path, (req, res) ->
    dao.list _.bind(res.json, res)

  server.get "#{path}/type/:type", (req, res) ->
    dao.list _.bind(res.json, res), {type: req.params.type}

  server.post path, (req, res) ->
    dao.create(req.body, _.bind(res.json, res))

  server.put "#{path}/:id", (req, res) ->
    dao.update(req.params.id, req.body, _.bind(res.json, res))

module.exports = {register}
