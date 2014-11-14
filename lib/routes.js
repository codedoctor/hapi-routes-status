(function() {
  module.exports = function(plugin, options) {
    return plugin.route({
      path: options.path || '/status',
      method: 'GET',
      config: {
        auth: false
      },
      handler: function(request, reply) {
        if (request.info.host === options.localhost) {
          return reply({
            app: options.app,
            running: true,
            uptime: process.uptime(),
            memoryUsage: process.memoryUsage(),
            versions: process.versions,
            droneId: process.pid
          });
        } else {
          return reply({
            app: options.app,
            running: true,
            uptime: process.uptime()
          });
        }
      }
    });
  };

}).call(this);

//# sourceMappingURL=routes.js.map
