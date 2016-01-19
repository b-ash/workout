View = require './View'


class AboutView extends View
    tagName: 'div'
    className: 'content'
    template: require './templates/about'

module.exports = AboutView
