'use strict'

describe 'Directive: readySearch', () ->

  # load the directive's module
  beforeEach module 'AMCClientApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<ready-search></ready-search>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the readySearch directive'
