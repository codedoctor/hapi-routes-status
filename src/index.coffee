#routes = require './routes'

module.exports.register = (plugin, options = {}, cb) ->
  #routes plugin

  plugin.expose 'dummy', {} # Needed because of a bug in the hapi code, otherwise pack.plugins would not be set.

  cb()

module.exports.register.attributes =
  pkg: require '../package.json'

