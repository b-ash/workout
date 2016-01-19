# Base model that utilizes local storage
class LocalStorageModel extends Backbone.Model

  localStorage: new Backbone.LocalStorage('Workout')

module.exports = LocalStorageModel
