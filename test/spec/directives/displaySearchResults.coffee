'use strict'

describe 'Directive: displaySearchResults', () ->

  # load the directive's module
  beforeEach module 'AMCClientApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<display-search-results></display-search-results>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the displaySearchResults directive'
