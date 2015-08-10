_ = require 'underscore'
Hoek = require 'hoek'
Joi = require 'joi'
i18n = require './i18n'

###
Returns the current status. Looks something like this:

{ 
"running":true,
  "uptime":1.964,
  "memoryUsage":{"rss":111693824,"heapTotal":86533888,"heapUsed":53585416},
  "versions":{"http_parser":"2.3","node":"0.12.4","v8":"3.28.71.19","uv":"1.5.0","zlib":"1.2.8","modules":"14","openssl":"1.0.1m"},
  "droneId":34247

{"http_parser":"2.3","node":"0.12.4","v8":"3.28.71.19","uv":"1.5.0","zlib":"1.2.8","modules":"14","openssl":"1.0.1m"}
}

###
module.exports = (plugin,options) ->
  Hoek.assert options.routeTagsPublic && _.isArray(options.routeTagsPublic),i18n.optionsRouteTagsPublicRequiredAndArray

  plugin.route
    path: '/status'
    method: 'GET'
    config:
      description: i18n.routeDescriptionStatusGet
      tags: options.routeTagsPublic      
      auth: false
      response:
        schema: Joi.object(
                      running: Joi.boolean().default(true).description("Indicates if the service is running.").example(true).required()
                      uptime: Joi.number().description("The uptime of this process.").example(1.2333).required()
                      memoryUsage: Joi.object().description("Detailed information about the memory usage.").example('{"rss":111693824,"heapTotal":86533888,"heapUsed":53585416}').required()
                      versions: Joi.object().description("System library version information.").example('{"http_parser":"2.3","node":"0.12.4","v8":"3.28.71.19","uv":"1.5.0","zlib":"1.2.8","modules":"14","openssl":"1.0.1m"}').required()
                      droneId: Joi.number().description("The id of the drone running this instance.").example(23453).required()                      
                  ).description("The status result object.").required().options({allowUnknown: true,stripUnknown: false})

    handler: (request, reply) ->
      reply 
        running: true
        uptime: process.uptime()
        memoryUsage: process.memoryUsage()
        versions: process.versions
        droneId: process.pid


