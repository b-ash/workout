Dao = require('./Dao')
_ = require('underscore')


class UserDao extends Dao
  table: '`user`'
  fields: ['`id`', '`name`', '`code`']

  list: (callback) =>
    super(callback, {orderBy: "`name` ASC"})

  create: (obj, callback) =>
    @runner("INSERT INTO #{@table} SET `name` = ?, `code` = ?", [obj.name, obj.code], callback)

  verify: ({name, code}, callback) ->
    @runner("SELECT #{@fields.join(', ')} FROM #{@table} WHERE name = ? AND code = ?", [name, code], ((user) ->
      callback(user)
    ), true)

module.exports = UserDao
