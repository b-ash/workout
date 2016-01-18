Dao = require('./Dao')

class SetDao extends Dao
  table: '`set`'
  fields: ['`id`', '`name`', '`description`', '`created`']
  selectSQL: 'SELECT `id`, `name`, `description`, `created` FROM `exercise`'

  list: (callback) =>
    super(callback, {orderBy: "`name` ASC"})

module.exports = SetDao
