Dao = require('./Dao')

class ExerciseDao extends Dao
  table: '`exercise`'
  fields: ['`id`', '`name`', '`description`', '`creator`', '`created`']

  list: (callback) =>
    super(callback, {orderBy: "`name` ASC"})

module.exports = ExerciseDao
