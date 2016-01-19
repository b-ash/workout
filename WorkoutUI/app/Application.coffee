User = require 'models/User'
Utils = require 'lib/Utils'


class Application
  initialize: =>
    # Don't requre router until the app module is defined
    Router = require 'lib/Router'

    @views = {}
    @router = new Router()
    @user = new User()

    if @user.isConfigured()
      Utils.formatTheme @user
      @user.verifyLogin().always(@start)
    else
      @start()

  start: =>
    if not @user.isConfigured() and window.location.pathname isnt '/configure'
      window.location.href = '/configure'
    else
      Backbone.history.start
        pushState: true

module.exports = new Application
