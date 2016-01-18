Dao = require('./Dao')

class UserDao extends Dao
  table: '`user`'
  fields: ['`id`', '`name`', '`created`']

  list: (callback) =>
    super(callback, {orderBy: "`name` ASC"})

module.exports = UserDao
