'use strict';

angular.module('AMCClientApp')
  .directive 'searchToggleAnimation', ($timeout, $window, $animate) ->
    linker = (scope, element, attrs) ->
      scope.$watch attrs.searchToggleAnimation, (val) ->
        console.log val
        if val
        then $animate.addClass element, 'search-field'
        else $animate.removeClass element, 'search-field'
    restrict: 'A'
    link: linker

