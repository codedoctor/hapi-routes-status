[![Build Status](https://travis-ci.org/codedoctor/hapi-routes-status.svg?branch=master)](https://travis-ci.org/codedoctor/hapi-routes-status)
[![Coverage Status](https://img.shields.io/coveralls/codedoctor/hapi-routes-status.svg)](https://coveralls.io/r/codedoctor/hapi-routes-status)
[![NPM Version](http://img.shields.io/npm/v/hapi-routes-status.svg)](https://www.npmjs.org/package/hapi-routes-status)
[![Dependency Status](https://gemnasium.com/codedoctor/hapi-routes-status.svg)](https://gemnasium.com/codedoctor/hapi-routes-status)



[![NPM Downloads](http://img.shields.io/npm/dm/hapi-routes-status.svg)](https://www.npmjs.org/package/hapi-routes-status)
[![Issues](http://img.shields.io/github/issues/codedoctor/hapi-routes-status.svg)](https://github.com/codedoctor/hapi-routes-status/issues)
[![HAPI 6.0](http://img.shields.io/badge/hapi-6.0-blue.svg)](http://hapijs.com)
[![API Documentation](http://img.shields.io/badge/API-Documentation-ff69b4.svg)](http://coffeedoc.info/github/codedoctor/hapi-routes-status)



(C) 2014 Martin Wawrusch

Exposes a /status route which returns a json object similar to this:

```json
{
  running: true,
  uptime: 12,
  memoryUsage: {
    rss: 57384960,
    heapTotal: 56160000,
    heapUsed: 19359568
  },
  versions: {
    http_parser: "1.0",
    node: "0.10.22",
    v8: "3.14.5.9",
    ares: "1.9.0-DEV",
    uv: "0.10.19",
    zlib: "1.2.3",
    modules: "11",
    openssl: "1.0.1e"
  },
  droneId: 41309
}
```

## See also

* [hapi-auth-bearer-mw](https://github.com/codedoctor/hapi-auth-bearer-mw)
* [hapi-identity-store](https://github.com/codedoctor/hapi-identity-store)
* [hapi-mongoose-db-connector](https://github.com/codedoctor/hapi-mongoose-db-connector)
* [hapi-routes-authorization-and-session-management](https://github.com/codedoctor/hapi-routes-authorization-and-session-management)
* [hapi-routes-roles](https://github.com/codedoctor/hapi-routes-roles)
* [hapi-routes-status](https://github.com/codedoctor/hapi-routes-status)
* [hapi-routes-users-authorizations](https://github.com/codedoctor/hapi-routes-users-authorizations)
* [hapi-routes-users-oauth-management](https://github.com/codedoctor/hapi-routes-users-oauth-management)
* [hapi-routes-users](https://github.com/codedoctor/hapi-routes-users)

and additionally

* [mongoose-identity-store-multi-tenant](https://github.com/codedoctor/mongoose-identity-store-multi-tenant)
* [mongoose-rest-helper](https://github.com/codedoctor/mongoose-rest-helper)
* [api-pagination](https://github.com/codedoctor/api-pagination)


## Contributing
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the package.json, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2014 Martin Wawrusch 
