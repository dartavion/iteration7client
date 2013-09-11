'use strict'

describe 'Controller: SearchresultsCtrl', () ->

  # load the controller's module
  beforeEach module 'AMCClientApp'

  SearchresultsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SearchresultsCtrl = $controller 'SearchresultsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
