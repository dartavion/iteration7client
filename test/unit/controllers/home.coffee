'use strict'

describe 'Controller: HomeCtrl', () ->

  # load the controller's module
  beforeEach module 'AMCClientApp'

  HomeCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    HomeCtrl = $controller 'HomeCtrl', {
      $scope: scope
    }

