Dao = require('./Dao')

class RoutineDao extends Dao
  table: '`routine`'
  fields: ['id', 'name', 'description', 'created']

  list: (callback) =>
    super(callback, {orderBy: "`name` ASC"})

  create: (json, callback) ->
    @runner "INSERT INTO #{@table} SET ?", _.pick(json, @fields), (routine) ->
      for exercise in json.exercises
        @runner "INSERT INTO `routineExercise` SET ?", {
          routineId: routine.id
          exerciseId: exercise.id
          position: exercise.position
        }
      callback(routine)

  history: (user, callback) ->
    @runner """
      SELECT r.name AS name,
             r.description AS description,
             s.dateInt AS dateInt
      FROM `routine` r, `set` s
      WHERE r.id = s.routineId AND
            s.userId = (SELECT `id` FROM `user` WHERE `name` = ?)
      GROUP BY 3
      ORDER BY 3 DESC
    """, [user], callback

  exercises: (id, callback) ->
    @runner """
      SELECT r.id AS routineId,
             r.description AS routineDescription,
             r.name AS routineName,
             r.created AS routineCreated,
             u.name AS routineCreator,
             e.name AS name,
             e.description AS description,
             re.position AS position,
             et.name AS type
      FROM `routine` r, `exercise` e, `routineExercise` re, `exerciseType` et, `user` u
      WHERE r.id = ? AND
            r.id = re.routineId AND
            e.id = re.exerciseId AND
            e.type = et.id AND
            r.creator = u.id
      ORDER BY re.position ASC
    """, [id], callback

module.exports = RoutineDao
