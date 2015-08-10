assert = require 'assert'
should = require 'should'

loadServer = require './support/load-server'

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
          result.should.have.property 'memoryUsage'
    
          cb null
