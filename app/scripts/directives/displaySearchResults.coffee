'use strict';

angular.module('AMCClientApp')
  .directive 'displaySearchResults', ($timeout, $window, $animate) ->
    linker = (scope, element, attrs) ->
      scope.$watch attrs.displaySearchResults, (value) ->
        if value
        then $animate.addClass element, 'show-search-results'
        else $animate.removeClass element, 'show-search-results'
    restrict: 'A'
    link: linker
