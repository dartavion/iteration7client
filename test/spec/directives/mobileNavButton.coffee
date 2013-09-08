'use strict'

describe 'Directive: mobileNavButton', () ->

  # load the directive's module
  beforeEach module 'AMCClientApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<mobile-nav-button></mobile-nav-button>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the mobileNavButton directive'
