Hoek = require 'hoek'
i18n = require './i18n'

routesToExpose = [
  require './routes-status-get'
]


module.exports.register = (server, options = {}, cb) ->

  defaults =
    routeTagsPublic: ['api','api-public','status']
    routeTagsAdmin: ['api','api-admin','status']

  options = Hoek.applyToDefaults defaults, options

  r server,options for r in routesToExpose

  server.expose 'i18n',i18n

  cb()

module.exports.register.attributes =
  pkg: require '../package.json'

