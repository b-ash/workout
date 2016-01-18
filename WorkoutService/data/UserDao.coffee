Dao = require('./Dao')

class UserDao extends Dao
  table: '`user`'
  fields: ['`id`', '`name`', '`created`']
  selectSQL: 'SELECT `id`, `name`, `created` FROM `user`'

  list: (callback) =>
    super(callback, {orderBy: "`name` ASC"})

module.exports = UserDao
