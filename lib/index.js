(function() {
  module.exports.register = function(plugin, options, cb) {
    if (options == null) {
      options = {};
    }
    plugin.expose('dummy', {});
    return cb();
  };

  module.exports.register.attributes = {
    pkg: require('../package.json')
  };

}).call(this);

//# sourceMappingURL=index.js.map
