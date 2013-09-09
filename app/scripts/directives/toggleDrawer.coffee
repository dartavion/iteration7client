'use strict';

angular.module('AMCClientApp')
  .directive 'toggleDrawer', ($timeout, $window, $animate) ->
    linker = (scope, element, attrs) ->
      scope.$watch attrs.toggleDrawer, (newVal) ->
        if newVal
        then $animate.addClass element, 'open-drawer'
        else $animate.removeClass element, 'open-drawer'
    restrict: 'A'
    link: linker

