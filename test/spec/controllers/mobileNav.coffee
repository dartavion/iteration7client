'use strict'

describe 'Controller: MobilenavCtrl', () ->

  # load the controller's module
  beforeEach module 'AMCClientApp'

  MobilenavCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MobilenavCtrl = $controller 'MobilenavCtrl', {
      $scope: scope
    }

