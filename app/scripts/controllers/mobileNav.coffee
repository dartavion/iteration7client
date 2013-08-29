'use strict'

angular.module('AMCClientApp')
  .controller 'MobilenavCtrl', ($scope) ->
    $scope.primaryNavigation = [
      {"href": "", "title": "Home"}
      {"href": "markets", "title": "Markets"}
      {"href": "campus_map", "title": "Campus Map"}
      {"href": "exhibitor", "title": "All Exhibitors"}
      {"href": "login", "title": "Login/Logout"}
      {"href": "http://www.yahoo.com", "title": "Buyer Services"}
      {"href": "http://www.google.com", "title":"Exhibitor Services"}
      {"href": "http://www.bing.com", "title":"Explore the Collections" },
      {"href": "http://www.wikipedia.org", "title":"Travel + Market Info" },
      {"href": "http://www.cnn.com", "title":"About Us + Contact" }]
