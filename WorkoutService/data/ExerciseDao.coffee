Dao = require('./Dao')

class ExerciseDao extends Dao
  table: '`exercise`'
  fields: ['`id`', '`name`', '`description`', '`created`']

  list: (callback) =>
    super(callback, {orderBy: "`name` ASC"})

module.exports = ExerciseDao
