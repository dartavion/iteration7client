'use strict';

angular.module('AMCClientApp')
  .directive('accordion', () ->
    template: '<div></div>'
    restrict: 'E'
    link: (scope, element, attrs) ->
      element.text 'this is the accordion directive'
  )
