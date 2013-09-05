'use strict'

describe 'Controller: TravelCtrl', () ->

  # load the controller's module
  beforeEach module 'AMCClientApp'

  TravelCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    TravelCtrl = $controller 'TravelCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
