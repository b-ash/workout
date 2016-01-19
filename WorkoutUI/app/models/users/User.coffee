LocalStorageModel = require('models/LocalStorageModel')


class User extends LocalStorageModel
  id: 'user'

  initialize: ->
    @fetch()

  defaults: ->
    configured: false

  isConfigured: ->
    @get('configured') and @has('name') and @get('name').length


module.exports = User
