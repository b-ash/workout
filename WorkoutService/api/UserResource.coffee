_ = require('underscore')
UserDao = require('../data/UserDao')

register = (server, basePath, dbRunner) ->
  dao = new UserDao(dbRunner)
  path = "#{basePath}/users"

  server.get path, (req, res) ->
    dao.list _.bind(res.json, res)

  server.post path, (req, res) ->
    dao.create(req.body, _.bind(res.json, res))

  server.put "#{path}/:id", (req, res) ->
    dao.update(req.params.id, req.body, _.bind(res.json, res))

  server.post "#{path}/:id/verify", (req, res) ->
    dao.verify req.params.id, req.body.code, (valid) ->
      if valid
        res.send(200)
      else
        res.send(401)

module.exports = {register}
