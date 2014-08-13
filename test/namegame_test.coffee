chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'namegame', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()

    require('../src/namegame')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/name game (\w+.)/i)

  it 'responds just once', ->
    expect(@robot.respond).to.have.been.calledOnce
