'use strict'

describe 'Directive: searchPanel', () ->

  # load the directive's module
  beforeEach module 'AMCClientApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<search-panel></search-panel>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the searchPanel directive'
