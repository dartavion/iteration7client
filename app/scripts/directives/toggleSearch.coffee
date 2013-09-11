'use strict';

angular.module('AMCClientApp')
  .directive 'toggleSearch', ($timeout, $window, $animate) ->
    linker = (scope, element, attrs) ->
      scope.$watch attrs.toggleSearch, (val) ->
        if val
        then $animate.addClass element, 'open-search'
        else $animate.removeClass element, 'open-search'
    restrict: 'A'
    link: linker

