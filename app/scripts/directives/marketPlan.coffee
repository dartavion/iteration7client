'use strict';

angular.module('AMCClientApp')
  .directive 'hideMe', ($animate) ->
    (scope, element, attrs) ->
      scope.$watch attrs.hideMe, (newVal) ->
        if newVal
        then $animate.addClass element, 'fade'
        else $animate.removeClass element, 'fade'

      return


