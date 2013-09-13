'use strict';

angular.module('AMCClientApp')
  .directive 'searchPanel', ($timeout, $window, $animate) ->
    linker = (scope, element, attrs) ->
      scope.$watch attrs.searchPanel, (value) ->
        if value
        then $animate.addClass element, 'fade-search-panel'
        else $animate.removeClass element, 'fade-search-panel'
    restrict: 'A'
    link: linker