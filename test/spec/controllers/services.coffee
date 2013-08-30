'use strict'

describe 'Controller: ServicesCtrl', () ->

  # load the controller's module
  beforeEach module 'AMCClientApp'

  ServicesCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ServicesCtrl = $controller 'ServicesCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
