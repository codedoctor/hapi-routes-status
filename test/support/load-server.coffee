index = require '../../lib/index'
Hapi = require "hapi"
_ = require 'underscore'

module.exports = loadServer = (cb) ->
    server = new Hapi.Server()

    server.connection
              host: 'localhost'
              port: 5675 

    pluginConf = [
        register: index
    ]

    server.register pluginConf, (err) ->
      cb err,server