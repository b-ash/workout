LocalStorageModel = require('models/LocalStorageModel')


class User extends LocalStorageModel
  id: 'user'

  initialize: ->
    @fetch()

  defaults: ->
    configured: false

  isConfigured: ->
    @get('configured') and
    @has('name') and
    @get('name').length and
    @has('code') and
    @get('code').length

  verifyLogin: (name, code) ->
    name ?= @get('name')
    code ?= @get('code')

    $.ajax('/api/users/verify',
      type: 'POST'
      data: {name, code}
    ).fail(=>
      @set('configured', false)
    )


module.exports = User
