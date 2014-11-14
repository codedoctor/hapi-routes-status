
module.exports = (plugin, options) ->
  plugin.route
    path: options.path || '/status'
    method: 'GET'
    config:
      auth: false
    handler: (request, reply) ->

      if request.info.host is options.localhost
        reply
          app: options.app
          running: true
          uptime: process.uptime()
          memoryUsage: process.memoryUsage()
          versions: process.versions
          droneId: process.pid
      else
        reply
          app: options.app
          running: true
          uptime: process.uptime()

