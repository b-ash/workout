View = require './View'


class Footer extends View
  el: '.footer'
  template: require './templates/footer'

  initialize: ({@user}) ->

  getRenderData: ->
    if @user.isConfigured()
      name: @user.get('name').toLowerCase().charAt(0).toUpperCase() + @user.get('name').slice(1)
    else
      {}


module.exports = Footer
