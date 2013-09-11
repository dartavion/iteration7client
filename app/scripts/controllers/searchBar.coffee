'use strict'

angular.module('AMCClientApp')
  .controller 'SearchbarCtrl', ($scope, $rootScope) ->

    $rootScope.isSearchDrawerOpen = false

    $rootScope.toggleSearch = () ->
      $rootScope.isSearchDrawerOpen = not $rootScope.isSearchDrawerOpen

    $rootScope.closeSearch = () ->
      $rootScope.isSearchDrawerOpen = true