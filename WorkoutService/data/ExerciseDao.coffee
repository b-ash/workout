Dao = require('./Dao')

class ExerciseDao extends Dao
  table: '`exercise`'
  fields: ['id', 'name', 'description', 'created', 'type']

  list: (callback, options={}) =>
    params = []
    if options.type
      params.push options.type

    @runner """
      SELECT e.id, e.name, e.description, et.name AS type, et.id AS typeId
      FROM `exercise` e, `exerciseType` et
      WHERE e.type = et.id #{if options.type then 'AND et.name = ?' else ''}
      ORDER BY e.type ASC, e.name ASC
    """, params, callback

  listTypes: (callback) =>
    @runner 'SELECT `id`, `name` from `exerciseType`', [], callback


module.exports = ExerciseDao
