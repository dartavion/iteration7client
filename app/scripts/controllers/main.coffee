'use strict'

angular.module('AMCClientApp')
  .controller 'MainCtrl', ['$scope', '$rootScope', 'appModel', ($scope, $rootScope, appModel) ->

    $scope.navModel = appModel.getNav()

    $rootScope.isNavPanelFaded = false

    $rootScope.navIsSelected = (navItem) ->
      navItem is appModel.selectedItem

    $rootScope.toggleNav = () ->
      $rootScope.isNavPanelFaded = not $rootScope.isNavPanelFaded

      appModel.setIsNavDrawerOpen($rootScope.isNavDrawerOpen)
      $rootScope.isNavDrawerOpen = appModel.getIsNavDrawerOpen()

    $rootScope.bodyTouchListener = () ->
      if $rootScope.isNavDrawerOpen
        $scope.toggleNav()

    $scope.toggleListItem = (id, isCollapsed) ->
#      $rootScope.isCollapsed = not $rootScope.isCollapsed
      $rootScope.$broadcast('collapseChange', { 'id': id, 'isCollapsed': isCollapsed})

]
