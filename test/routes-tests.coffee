assert = require 'assert'
should = require 'should'

loadServer = require './support/load-server'
loadServerWithOptions = require './support/load-server-with-config.coffee'

describe 'WHEN route testing for status-routes', ->
  describe '/status', ->
    loadServer (err,server) ->
      return cb err if err
      it 'should respond with an up status', (cb) ->
        options =
          method: "GET"
          url: "/status"
   
        server.inject options, (response) ->
          result = response.result

          response.statusCode.should.equal 200
          should.exist result

          result.should.have.property 'running',true
          result.should.have.property 'uptime'
          result.should.not.have.property 'memoryUsage'
          result.should.not.have.property 'droneId'

          cb null

describe 'WHEN route testing for "/stats" route', ->
  describe '/stats', ->
    loadServerWithOptions (err,server) ->
      return cb err if err
      it 'should respond with an up stats', (cb) ->
        options =
          method: "GET"
          url: "/stats"
          headers:
            "Host" : "localhost"

        server.inject options, (response) ->
          result = response.result
          #console.log result

          response.statusCode.should.equal 200
          should.exist result

          result.should.have.property 'running',true
          result.should.have.property 'uptime'
          result.should.have.property 'memoryUsage'
          result.should.have.property 'versions'
          result.should.have.property 'droneId'
          result.should.have.property 'app'
          result.app.should.have.property 'name', 'myApp'
          result.app.should.have.property 'version', '0.0.1-7'

          cb null
