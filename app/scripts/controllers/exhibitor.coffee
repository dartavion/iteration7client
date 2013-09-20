'use strict'

angular.module('AMCClientApp')
  .controller 'ExhibitorCtrl', ($scope) ->
    $("body").addClass "exhibitor"  if location.hash is "#/exhibitor"


