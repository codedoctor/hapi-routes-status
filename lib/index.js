(function() {
  var routes;

  routes = require('./routes');

  module.exports.register = function(server, options, cb) {
    if (options == null) {
      options = {};
    }
    routes(server);
    if (process.env.NODE_ENV === 'test') {
      server.expose('dummy', {});
    }
    return cb();
  };

  module.exports.register.attributes = {
    pkg: require('../package.json')
  };

}).call(this);

//# sourceMappingURL=index.js.map
