app = require 'Application'
View = require 'views/View'
User = require 'models/User'
Utils = require 'lib/Utils'
$ = jQuery

REMOTE_ERROR = "The app code is incorrect."
VALIDATE_ERROR = "Whoa there cowpoke, fill in the blanks."
INVALID_LOGIN_ERROR = "The user and code combination is incorrect."
API_ERROR = "There was an error. Try saving again."

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
    @$errorMsg = @$('#error_msg')

    theme = @user.get('theme')
    if theme
      @$("#theme option[value='#{theme}']").attr('selected', 'selected')

  changeTheme: =>
    @user.set 'theme', @$('#theme').val()
    Utils.formatTheme @user
    if @user.isConfigured()
      @user.save()

  isValid: =>
    @$('#name').val().length && @$('#user_code').val().length && @$('#app_code').val().length

  create: =>
    @configure(false)

  login: =>
    @configure(true)

  configure: (existingUser) =>
    unless @isValid()
      return @onValidationError()

    config =
      name: @$('#name').val()
      userCode: @$('#user_code').val()
      appCode: @$('#app_code').val()
      theme: @$('#theme').val()
      configured: true

    interactive = @user.verifyRemote(config.appCode)
    interactive.fail(@onRemoteError)
    interactive.then(=>
      if existingUser
        promise = @user.verifyLogin(config.name, config.userCode,).fail(@onLoginError)
      else
        promise = @user.createUser(config.name, config.userCode)

      promise.done(=>
        @user.save(config)
        app.router.navigate('', true)
      )
    )

  onRemoteError: (xhr) =>
    if xhr.status is 401
      @$errorMsg.text(REMOTE_ERROR).show()
    else
      @onApiError()

  onValidationError: =>
    @$errorMsg.text(VALIDATION_ERROR).show()

  onLoginError: (xhr) =>
    if xhr.status is 401
      @$errorMsg.text(INVALID_LOGIN_ERROR).show()
    else
      @onApiError()

  onApiError: =>
    @$errorMsg.text(API_ERROR).show()


module.exports = ConfigureView
