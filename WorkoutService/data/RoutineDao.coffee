Dao = require('./Dao')

class RoutineDao extends Dao
  table: '`routine`'
  fields: ['`id`', '`name`', '`description`', '`created`']

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

  exercises: (id, callback) ->
    @runner """
      SELECT r.name AS routine,
             e.name AS exercise,
             e.description AS description,
             re.position AS position,
             et.name AS type
      FROM `routine` r, `exercise` e, `routineExercise` re, `exerciseType` et
      WHERE r.id = ? AND
            r.id = re.routineId AND
            e.id = re.exerciseId AND
            e.type = et.id
      ORDER BY re.position ASC
    """, [id], callback

module.exports = RoutineDao
