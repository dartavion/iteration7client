'use strict'

describe 'Directive: marketPlan', () ->

  # load the directive's module
  beforeEach module 'AMCClientApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<market-plan></market-plan>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the marketPlan directive'
