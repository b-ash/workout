_ = require('underscore')
UserDao = require('../data/UserDao')

register = (server, basePath, dbRunner) ->
  dao = new UserDao(dbRunner)
  path = "#{basePath}/users"

  server.post path, (req, res) ->
    dao.create(req.body, _.bind(res.json, res))

  server.post "#{path}/verify", (req, res) ->
    dao.verify req.body, (user) ->
      if user
        res.send(200, user)
      else
        res.send(401)

module.exports = {register}
