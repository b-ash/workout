app = require 'Application'
View = require 'views/View'
User = require 'models/users/User'
Utils = require 'lib/Utils'
$ = jQuery


class ConfigureView extends View
  tagName: 'div'
  className: 'content'
  template: require('views/templates/configure')
  events:
    'click #create': 'create'
    'click #login': 'login'
    'change #theme': 'changeTheme'

  initialize: ({@user}) ->

  getRenderData: =>
    @user.toJSON()

  afterRender: =>
    theme = @user.get('theme')
    if theme
      @$("#theme option[value='#{theme}']").attr('selected', 'selected')

  changeTheme: =>
    @user.set 'theme', @$('#theme').val()
    Utils.formatTheme @user
    if @user.isConfigured()
      @user.save()

  isValid: =>
    @$('#name').val().length && @$('#code').val().length

  create: =>
    @configure(false)

  login: =>
    @configure(true)

  configure: (existingUser) =>
    unless @isValid()
      return @onError()

    config =
      name: @$('#name').val()
      code: @$('#code').val()
      theme: @$('#theme').val()
      configured: true

    if existingUser
      promise = @attemptLogin(config.name, config.code)
    else
      promise = @createUser(config.name, config.code)

    promise.done(=>
      @user.save(config)
      app.router.navigate('', true)
    ).fail(@onLoginError)

  attemptLogin: (name, code) ->
    $.ajax '/api/users/verify',
      type: 'POST'
      data: {name, code}

  createUser: (name, code) ->
    $.ajax '/api/users',
      type: 'POST'
      data: {name, code}

  onValidationError: =>
    @$('#validation_error_msg').show()

  onLoginError: =>
    @$('#login_error_msg').show()


module.exports = ConfigureView
