View = require './View'


class Footer extends View
  el: '.footer'
  template: require './templates/footer'

  initialize: ({@user}) ->

  getRenderData: ->
    name: @user.get('name').toLowerCase().charAt(0).toUpperCase() + @user.get('name').slice(1)


module.exports = Footer
