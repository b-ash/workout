Dao = require('./Dao')

class ExerciseDao extends Dao
  table: '`exercise`'
  fields: ['`id`', '`name`', '`description`', '`created`']
  selectSQL: 'SELECT `id`, `name`, `description`, `created` FROM `exercise`'

  list: (callback) =>
    super(callback, {orderBy: "`name` ASC"})

module.exports = ExerciseDao
