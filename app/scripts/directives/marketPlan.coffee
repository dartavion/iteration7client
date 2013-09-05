'use strict';

angular.module('AMCClientApp')
  .directive 'hideMe', ($timeout, $window, $animate) ->
    restrict: 'A'
    replace: true
    link: (scope, element, attrs) ->
      scope.$watch attrs.hideMe, (newVal) ->
        if newVal
        then $animate.addClass element, 'fade', () -> console.log 'done'
        else $animate.removeClass element, 'fade'




