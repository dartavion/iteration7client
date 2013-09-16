'use strict';

angular.module('AMCClientApp')
  .directive 'accordion', () ->
    linker = (scope, element, attrs) ->

      scope.collapsed = true

      onCollapseChange = (v) ->
        if scope.collapsed is false
          scope.$parent.toggleListItem(scope.$id)

      scope.$watch('accordion', onCollapseChange)

      scope.$on 'collapseChange', (event, args) ->
        console.log args.id, scope.$id
        if (scope.collapsed is false && args.id not scope.$id)
          scope.collapsed = true

    restrict: 'A'
    link: linker
