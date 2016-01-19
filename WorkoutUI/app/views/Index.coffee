View = require './View'


class IndexView extends View
    tagName: 'div'
    className: 'content'
    template: require './templates/index'

module.exports = IndexView
