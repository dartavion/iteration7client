'use strict'

describe 'Controller: ExhibitorCtrl', () ->

  # load the controller's module
  beforeEach module 'AMCClientApp'

  ExhibitorCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ExhibitorCtrl = $controller 'ExhibitorCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
