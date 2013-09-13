'use strict'

angular.module('AMCClientApp')
  .controller 'SearchbarCtrl', ($scope, $rootScope) ->

    $rootScope.isSearchDrawerOpen = false
    $rootScope.isSearchPanelFaded = false
    $rootScope.isAccordionOpen = false
    $rootScope.isCollapsed = false

    $rootScope.toggleSearch = () ->
      $rootScope.isSearchPanelFaded = not $rootScope.isSearchPanelFaded
      $rootScope.isSearchDrawerOpen = not $rootScope.isSearchDrawerOpen

    $rootScope.closeSearch = () ->
      $rootScope.isSearchPanelFaded = true
      $rootScope.isSearchDrawerOpen = true

    $rootScope.toggleListItem = (id, isCollapsed) ->
#      $rootScope.isCollapsed = not $rootScope.isCollapsed
      $rootScope.$broadcast('collapseChange', { 'id': id, 'isCollapsed': isCollapsed})



