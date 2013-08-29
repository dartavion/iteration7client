'use strict'

describe 'Controller: MarketsCtrl', () ->

  # load the controller's module
  beforeEach module 'AMCClientApp'

  MarketsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MarketsCtrl = $controller 'MarketsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
