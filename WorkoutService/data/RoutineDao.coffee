Dao = require('./Dao')

class RoutineDao extends Dao
  table: '`routine`'
  fields: ['`id`', '`name`', '`description`', '`created`']
  selectSQL: 'SELECT `id`, `name`, `description`, `created` FROM `routine`'

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
      SELECT r.name as routine, e.name AS exercise, e.description AS description, re.position AS position, et.name as type
      FROM `routine` r, `exercise` e, `routineExercise` re, `exerciseType` et
      WHERE r.id = re.routineId AND e.id = re.exerciseId AND r.id = ? AND e.type = et.id
      ORDER BY re.position ASC
    """, [id], callback

module.exports = RoutineDao
