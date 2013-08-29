'use strict'

describe 'Directive: mobileNav', () ->

  # load the directive's module
  beforeEach module 'AMCClientApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<mobile-nav></mobile-nav>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the mobileNav directive'
