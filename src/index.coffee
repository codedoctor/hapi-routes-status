routes = require './routes'

module.exports.register = (server, options = {}, cb) ->
  routes server

  server.expose 'dummy', {} if process.env.NODE_ENV is 'test'

  cb()

module.exports.register.attributes =
  pkg: require '../package.json'

