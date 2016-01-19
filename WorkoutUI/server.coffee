fs = require 'fs'
express = require 'express'
sysPath = require 'path'

fullPath = sysPath.resolve 'config'
{config} = require fullPath

exports.startServer = (port, path, callback) ->
    app = express.createServer express.logger()
    port = parseInt(process.env.PORT or port, 10)
    basePath = "#{__dirname}/#{path}"

    # Express init
    app.configure ->
        app.use express.bodyParser()
        app.use express.methodOverride()
        app.use express.errorHandler
            dumpExceptions: true
            showStack: true
        app.use express.static(basePath)

    indexPath = "#{basePath}/index.html"
    app.get "*", (req, res) ->
        res.sendfile sysPath.basename(indexPath), {root: sysPath.dirname(indexPath)}

    app.listen port, ->
        console.info "Listening on #{port}, dawg"
    app

# We only start this up if we're not using brunch to run it. Pretty hacky, I know.
exports.startServer config.server.port, config.paths.public unless config.server.run?
