mysql = require('mysql')

pool = mysql.createPool
  host: process.env.WORKOUT_HOST or 'localhost'
  user: process.env.WORKOUT_HOST or 'root'
  password: process.env.WORKOUT_HOST or ''
  database: 'Workout'
  connectionLimit: 10

executeQuery = (query, params=[], callback, singleResult=false) ->
  pool.getConnection (err, connection) ->
    if err
      console.log 'Error aquiring connection from pool'
      throw err

    console.log query
    connection.query query, params, (err, results) ->
      connection.release()

      if err
        console.log "Error running query `#{query}`"
        throw err

      if singleResult
        results = results[0]

      callback? results


module.exports = executeQuery
