'use strict'

angular.module('AMCClientApp')
  .controller 'LoginCtrl', ($scope, $rootScope) ->
    $rootScope.isHidden = false
    $rootScope.fadeIt = () ->
      $rootScope.isHidden = not $rootScope.isHidden