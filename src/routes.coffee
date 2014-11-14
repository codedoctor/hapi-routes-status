
module.exports = (plugin, options) ->
  plugin.route
    path: options.path || '/status'
    method: 'GET'
    config:
      auth: false
    handler: (request, reply) ->
      reply 
        running: true
        uptime: process.uptime()
        memoryUsage: process.memoryUsage()
        versions: process.versions
        droneId: process.pid


