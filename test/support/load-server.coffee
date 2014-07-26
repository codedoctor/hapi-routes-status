index = require '../../lib/index'
Hapi = require "hapi"
_ = require 'underscore'

module.exports = loadServer = (cb) ->
    server = new Hapi.Server 5675,"localhost",{}

    pluginConf = [
        plugin: index
    ]

    server.pack.register pluginConf, (err) ->

      console.log "PLUGINS 1"
      console.log "GOT #{k}" for k in _.keys(server.pack.plugins)
        

      cb err,server