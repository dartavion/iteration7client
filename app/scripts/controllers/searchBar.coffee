'use strict'

angular.module('AMCClientApp')
  .controller 'SearchbarCtrl', ($scope, appModel) ->

    $scope.navModel = appModel.getNav()



