'use strict'

describe 'Directive: accordion', () ->

  # load the directive's module
  beforeEach module 'AMCClientApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
#
#  it 'should make hidden element visible', inject ($compile) ->
#    element = angular.element '<accordion></accordion>'
#    element = $compile(element) scope
#    expect(element.text()).toBe 'this is the accordion directive'
