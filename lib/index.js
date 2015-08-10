(function() {
  var Hoek, i18n, routesToExpose;

  Hoek = require('hoek');

  i18n = require('./i18n');

  routesToExpose = [require('./routes-status-get')];

  module.exports.register = function(server, options, cb) {
    var defaults, i, len, r;
    if (options == null) {
      options = {};
    }
    defaults = {
      routeTagsPublic: ['api', 'api-public', 'status'],
      routeTagsAdmin: ['api', 'api-admin', 'status']
    };
    options = Hoek.applyToDefaults(defaults, options);
    for (i = 0, len = routesToExpose.length; i < len; i++) {
      r = routesToExpose[i];
      r(server, options);
    }
    server.expose('i18n', i18n);
    return cb();
  };

  module.exports.register.attributes = {
    pkg: require('../package.json')
  };

}).call(this);

//# sourceMappingURL=index.js.map
