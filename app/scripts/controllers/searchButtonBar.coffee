'use strict'

angular.module('AMCClientApp')
  .controller 'SearchbuttonbarCtrl', ($scope, $element) ->

    $scope.setListSearchContext = () ->
      $scope.$emit 'showList'
    $scope.setMapSearchContext = () ->
      $scope.$emit 'showMap'
    $scope.setFloorSearchContext = () ->
      $scope.$emit 'showFloor'