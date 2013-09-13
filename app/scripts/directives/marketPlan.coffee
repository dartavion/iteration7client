'use strict';

angular.module('AMCClientApp')
  .directive 'marketPlan', ($timeout, $window, $animate) ->
    linker = (scope, element, attrs) ->

    template: '<button class="topcoat-button--large--quiet full"">Market Plan</button>'
    restrict: 'AE'
    link: linker
