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


angular.module('AMCClientApp')
.directive 'navPanel', ($timeout, $window, $animate) ->
    linker = (scope, element, attrs) ->
      scope.$watch attrs.navPanel, (value) ->
        if value
        then $animate.addClass element, 'fade-nav-panel'
        else $animate.removeClass element, 'fade-nav-panel'
    restrict: 'A'
    link: linker