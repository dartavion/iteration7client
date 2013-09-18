'use strict';

angular.module('AMCClientApp')
  .directive 'collapsed', ($timeout, $window, $animate) ->

    linker = (scope, element, attrs) ->
      scope.$watch attrs.collapsed, () ->
        if element.hasClass('collapse')
          $animate.removeClass element, 'collapse'
        else
          $animate.addClass element, 'collapse'


    restrict: 'A'
    link: linker

