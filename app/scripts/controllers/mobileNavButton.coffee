'use strict'

angular.module('AMCClientApp')
  .controller 'MobilenavbuttonCtrl', ($scope, $rootScope) ->

    $scope.toggleNav = () ->
      if $rootScope.body_class is 'showing-menu'
        $rootScope.body_class = ''
      else
        $rootScope.body_class = 'showing-menu'
        $rootScope.$broadcast('navIsOpen')


