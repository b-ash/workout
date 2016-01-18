checkKey = (name, key) ->
  key is process.env[name]

register = (server, basePath) ->
  server.post "#{basePath}/admin/interactive", (req, res) ->
    req.json
      remote: checkKey('WORKOUT_REMOTE', req.body.remote)

module.exports = {register}
