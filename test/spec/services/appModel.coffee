'use strict'

describe 'Service: appModel', () ->

  # load the service's module
  beforeEach module 'AMCClientApp'

  # instantiate service
  appModel = {}
  beforeEach inject (_appModel_) ->
    appModel = _appModel_

  it 'should do something', () ->
    expect(!!appModel).toBe true
