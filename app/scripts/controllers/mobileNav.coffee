'use strict'

angular.module('AMCClientApp')
  .controller 'MobilenavCtrl', ($scope) ->
    $scope.primaryNavigation = [
      {"href": "", "title": 'Home'}
      {"href": "markets", "title": "Markets"}
      {"href": "campusmap", "title": "Campus Map"}
      {"href": "exhibitor", "title": "All Exhibitors"}
      {"href": "login", "title": "Login/Logout"}
      {"href": "services", "title": "Buyer Services"}
      {"href": "services", "title":"Exhibitor Services"}
      {"href": "collections", "title":"Explore the Collections" },
      {"href": "travel", "title":"Travel + Market Info" },
      {"href": "contact", "title":"About Us + Contact" }]
