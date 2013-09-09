'use strict';

angular.module('AMCClientApp')
  .directive 'readySearch', ($timeout, $window, $animate) ->
    linker = (scope, element, attrs) ->
      scope.$watch attrs.readySearch, (val) ->
        if val
          $animate.addClass element, 'search-field'
        else $animate.removeClass element, 'search-field'
    restrict: 'A'
    link: linker

