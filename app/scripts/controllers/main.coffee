'use strict'

angular.module('AMCClientApp')
  .controller 'MainAppCtrl', ['$scope', 'appModel', ($scope, appModel) ->

    $scope.navModel = appModel.getNav()
    $scope.browseByModel = appModel.getBrowseBy()
    $scope.isCollapsed = appModel.getIsCollapsed()

    $scope.toggleNav = () ->
      $scope.isNavPanelFaded = appModel.setIsNavPanelFaded(appModel.getIsNavPanelFaded())
      $scope.isNavDrawerOpen = appModel.setIsNavDrawerOpen(appModel.getIsNavDrawerOpen())

    $scope.selectNavItem = (item) ->

    $scope.toggleSearch = () ->
      $scope.isSearchDrawerOpen = appModel.setIsSearchDrawerOpen(appModel.getIsSearchDrawerOpen())
      $scope.isSearchPanelFaded = appModel.setIsSearchPanelFaded(appModel.getIsSearchPanelFaded())

    $scope.closeSearch = () ->
      $scope.isSearchPanelFaded = true
      $scope.isSearchDrawerOpen = true

    $scope.toggleListItem = (id, isCollapsed) ->
      $scope.isCollapsed = appModel.setIsCollapsed(appModel.getIsCollapsed())

    $scope.bodyTouchedListener = () ->
      if appModel.getIsNavDrawerOpen()
        $scope.toggleNav()

    $scope.bodySwipeLeftListener = () ->
      if appModel.getIsNavDrawerOpen()
        $scope.toggleNav()
      else
        $scope.toggleSearch()

    $scope.bodySwipeRightListener = () ->
      $scope.toggleNav()

]
