'use strict';

angular.module('AMCClientApp')

  .directive('mobileNav', () ->
    transclude: false
    templateUrl: 'views/partials/mobile-nav-links.html'
    restrict: 'EA'
    scope: {
      mainNavigation: "="
    }
    link: (scope, element, attrs) ->
      element.bind 'navIsOpen', () ->
        console.log 'nice'
  )
