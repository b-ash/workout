User = require 'models/users/User'
Utils = require 'lib/Utils'


Application =
  initialize: (onSuccess) ->
    # Don't requre router until the app module is defined
    Router = require 'lib/Router'

    @views = {}
    @router = new Router()
    @user = new User()

    if @user.isConfigured()
      Utils.formatTheme @user

    if not @user.isConfigured() and window.location.pathname isnt '/configure'
      window.location.href = '/configure'
    else
      Backbone.history.start
        pushState: true
      onSuccess()


module.exports = Application
