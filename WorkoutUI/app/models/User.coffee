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
    @has('userCode') and
    @get('userCode').length and
    @has('appCode') and
    @get('appCode').length

  createUser: (name, code) ->
    $.ajax '/api/users',
      type: 'POST'
      data: {name, code}

  verifyLogin: (name, code) ->
    name ?= @get('name')
    code ?= @get('userCode')

    $.ajax('/api/users/verify',
      type: 'POST'
      data: {name, code}
    ).fail(=>
      @set('configured', false)
    )

  verifyRemote: (remote) ->
    remote ?= @get('appCode')

    $.ajax('/api/admin/interactive'
      type: 'POST'
      data: {remote}
    ).fail(=>
      @set('configured', false)
    )


module.exports = User
