(function() {
  module.exports = function(plugin, options) {
    return plugin.route({
      path: options.path || '/status',
      method: 'GET',
      config: {
        auth: false
      },
      handler: function(request, reply) {
        return reply({
          running: true,
          uptime: process.uptime(),
          memoryUsage: process.memoryUsage(),
          versions: process.versions,
          droneId: process.pid
        });
      }
    });
  };

}).call(this);

//# sourceMappingURL=routes.js.map
