(function() {
  var routes;

  routes = require('./routes');

  module.exports.register = function(plugin, options, cb) {
    if (options == null) {
      options = {};
    }
    routes(plugin);
    if (process.env.NODE_ENV === 'test') {
      plugin.expose('dummy', {});
    }
    return cb();
  };

  module.exports.register.attributes = {
    pkg: require('../package.json')
  };

}).call(this);

//# sourceMappingURL=index.js.map
