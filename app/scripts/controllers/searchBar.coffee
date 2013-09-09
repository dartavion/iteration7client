'use strict'

angular.module('AMCClientApp')
  .controller 'SearchbarCtrl', ($scope, $rootScope) ->

    $rootScope.isReady = true

    $rootScope.openSearch = () ->

      if $rootScope.isReady is true
        $rootScope.isReady = false

    $rootScope.closeSearch = () ->
      if $rootScope.isReady is false
        $rootScope.isReady = true