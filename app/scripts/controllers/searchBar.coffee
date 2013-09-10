'use strict'

angular.module('AMCClientApp')
  .controller 'SearchbarCtrl', ($scope, $rootScope) ->

    $rootScope.isReady = false

    $scope.toggleSearch = () ->
      console.log 'hrm'
      $rootScope.isReady = not $rootScope.isReady

    $rootScope.closeSearch = () ->
      $rootScope.isReady = true