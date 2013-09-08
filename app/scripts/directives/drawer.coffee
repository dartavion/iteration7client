'use strict';

angular.module('AMCClientApp')

  .directive('drawer', () ->
    transclude: false
    templateUrl: 'views/partials/mobile-nav-links.html'
    restrict: 'EA'
    scope: {
      navItems: "="
    }
    link: (scope, element, attrs) ->
      console.log(scope.navItems)
  )
