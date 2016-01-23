checkKey = (name, key) ->
  key is process.env[name]

register = (server, basePath) ->
  server.post "#{basePath}/admin/interactive", (req, res) ->
    if checkKey('WORKOUT_REMOTE', req.body.remote)
      res.send(200)
    else
      res.send(401)

module.exports = {register}
