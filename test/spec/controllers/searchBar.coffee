'use strict'

describe 'Controller: SearchbarCtrl', () ->

  # load the controller's module
  beforeEach module 'AMCClientApp'

  SearchbarCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SearchbarCtrl = $controller 'SearchbarCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
