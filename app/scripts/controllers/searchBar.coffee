'use strict'

angular.module('AMCClientApp')
  .controller 'SearchbarCtrl', ($scope, $rootScope) ->

    $rootScope.isReady = false

    $rootScope.toggleSearch = () ->
      $rootScope.isReady = not $rootScope.isReady

    $rootScope.closeSearch = () ->
      $rootScope.isReady = true