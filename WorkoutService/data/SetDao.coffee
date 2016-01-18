Dao = require('./Dao')

class SetDao extends Dao
  table: '`set`'
  fields: [
    '`id`'
    '`userId`'
    '`routineId`'
    '`exerciseId`'
    '`position`'
    '`reps`'
    '`weight`'
    '`notes`'
    '`dateInt`'
  ]

  list: (userId, routineId, callback) =>
    parse = (data) ->
      outputByDate = {}
      for set in data
        outputByDate[set.dateInt] ?= []
        outputByDate[set.dateInt].push(set)
      callback(outputByDate)


    sql = """
      SELECT u.name AS user,
             r.name AS routine,
             e.name AS exercise,
             et.name AS exerciseType,
             s.position AS position,
             s.reps AS reps,
             s.weight AS weight,
             s.notes AS notes,
             s.dateInt as dateInt
      FROM `set` s, `exercise` e, `exerciseType` et, `routine` r, `user` u
      WHERE s.userId = ? AND
            s.userId = u.id AND
            s.routineId = ? AND
            s.routineId = r.id AND
            s.exerciseId = e.id AND
            e.type = et.id
      ORDER BY `dateInt` DESC, `position` ASC
    """

    @runner(sql, [userId, routineId], parse)

module.exports = SetDao
