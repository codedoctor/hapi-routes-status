_ = require 'underscore'
Hoek = require "hoek"
Boom = require 'boom'
Joi = require "joi"

module.exports = (plugin) ->
  plugin.route
    path: '/status'
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


