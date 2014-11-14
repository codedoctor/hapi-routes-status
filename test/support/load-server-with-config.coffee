index = require '../../lib/index'
Hapi = require "hapi"
_ = require 'underscore'

# server with custom config
module.exports = loadServerWithOptions = (cb) ->
    server = new Hapi.Server 5675,"localhost",{}

    pluginConf = [
        plugin: index,
        options:
            app:
                name: "myApp"
                version: "0.0.1-7"
            path: '/stats'
            localhost: 'localhost'
    ]

    server.pack.register pluginConf, (err) ->
        cb err,server