express = require('express')
dbRunner = require('./mysql_runner')

server = express()
server.use(express.bodyParser())

app = require('http').createServer(server)
base = '/api'

for data in ['Routine', 'Exercise', 'User', 'Set', 'Admin']
  require("./api/#{data}Resource").register(server, base, dbRunner)


app.listen(8000)
console.log 'Server listening on port 8000'
