'use strict'

describe 'Controller: SearchContextButtonsCtrl', () ->

  # load the controller's module
  beforeEach module 'AMCClientApp'

  SearchbuttonbarCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SearchbuttonbarCtrl = $controller 'SearchContextButtonsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
