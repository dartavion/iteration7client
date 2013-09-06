'use strict'

describe 'Controller: MobilenavbuttonCtrl', () ->

  # load the controller's module
  beforeEach module 'AMCClientApp'

  MobilenavbuttonCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MobilenavbuttonCtrl = $controller 'MobilenavbuttonCtrl', {
      $scope: scope
    }

