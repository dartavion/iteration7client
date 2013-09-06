'use strict'

describe 'Controller: CampusmapCtrl', () ->

  # load the controller's module
  beforeEach module 'AMCClientApp'

  CampusmapCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CampusmapCtrl = $controller 'CampusmapCtrl', {
      $scope: scope
    }

