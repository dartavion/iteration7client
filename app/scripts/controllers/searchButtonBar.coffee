'use strict'

angular.module('AMCClientApp')
  .controller 'SearchbuttonbarCtrl', ($scope) ->

    $scope.setTab = (tab) ->
      $scope.active[tab] = true

    $scope.setListSearchContext = () ->
      $scope.$emit 'showList'

    $scope.setMapSearchContext = () ->
      $scope.$emit 'showMap'

    $scope.setFloorSearchContext = () ->
      $scope.$emit 'showFloor'