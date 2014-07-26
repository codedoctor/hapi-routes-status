routes = require './routes'

module.exports.register = (plugin, options = {}, cb) ->
  routes plugin

  plugin.expose 'dummy', {} if process.env.NODE_ENV is 'test'

  cb()

module.exports.register.attributes =
  pkg: require '../package.json'

