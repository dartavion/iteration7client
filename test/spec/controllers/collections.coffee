'use strict'

describe 'Controller: CollectionsCtrl', () ->

  # load the controller's module
  beforeEach module 'AMCClientApp'

  CollectionsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CollectionsCtrl = $controller 'CollectionsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
