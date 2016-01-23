app = require 'Application'
views =
  nav: require('views/Nav')
  footer: require('views/Footer')
  index: require('views/Index')
  chooseRoutine: require('views/ChooseRoutine')
  createRoutine: require('views/CreateRoutine')
  createExercise: require('views/CreateExercise')
  about: require('views/About')
  clear: require('views/Clear')
  configure: require('views/Configure')


class Router extends Backbone.Router
  currentView: null
  routes:
    '': 'index'
    'workout': 'chooseRoutine'
    'create/routines': 'createRoutine'
    'create/exercises': 'createExercise'
    'about': 'about'
    'configure': 'configure'
    'clear': 'clear'
    '*query': 'redirectDefault'

  redirectDefault: (actions) =>
    @navigate '', {trigger: true}

  index: =>
    @setupView('index', 'index')

  chooseRoutine: =>
    @setupView('workout', 'chooseRoutine')

  createRoutine: =>
    @setupView('create', 'createRoutine')

  createExercise: =>
    @setupView('create', 'createExercise')

  about: =>
    @setupView('settings', 'about')

  clear: =>
    @setupView('settings', 'clear')

  configure: =>
    @setupView('settings', 'configure', {user: app.user})

  ###
  Helpers
  ###
  setupView: (navItem, claxx, params={}) =>
    if not app.user.isConfigured() and claxx isnt 'configure'
      return

    @navSetup(navItem)
    @footerSetup()
    view = app.views[claxx]
    if view isnt @currentView
      @closeCurrentView()
      view = app.views[claxx] = new views[claxx](params)
      @setCurrentView view

  navSetup: (activeView) =>
    app.views.nav ?= new views.nav
    app.views.nav.activeView = activeView
    app.views.nav.render()

  footerSetup: =>
    app.views.footer ?= new views.footer {user: app.user}
    app.views.footer.render()

  closeCurrentView: =>
    @currentView?.close()

  setCurrentView: (view) =>
    @currentView = view
    view.render ->
      $('#main_page').html view.$el


module.exports = Router
