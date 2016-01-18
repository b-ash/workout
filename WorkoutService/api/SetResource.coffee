_ = require('underscore')
SetDao = require('../data/SetDao')

register = (server, basePath, dbRunner) ->
  dao = new SetDao(dbRunner)
  path = "#{basePath}/sets"

  server.get path, (req, res) ->
    dao.list _.bind(res.json, res)

  server.post path, (req, res) ->
    dao.create(req.body, _.bind(res.json, res))

  server.put "#{path}/:id", (req, res) ->
    dao.update(req.params.id, req.body, _.bind(res.json, res))

module.exports = {register}
