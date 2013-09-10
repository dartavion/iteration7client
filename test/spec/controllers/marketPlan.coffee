'use strict'

describe 'Controller: MarketplanCtrl', () ->

  # load the controller's module
  beforeEach module 'AMCClientApp'

  MarketplanCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MarketplanCtrl = $controller 'MarketplanCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
