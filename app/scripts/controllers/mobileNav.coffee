'use strict'

angular.module('AMCClientApp')
  .controller 'MobilenavCtrl', ($scope) ->
    $scope.primaryNavigation = [
      {"link": "http://www.yahoo.com", "title": "Buyer Services"}
      {"link": "http://www.google.com", "title":"Exhibitor Services"}
      {"link": "http://www.bing.com", "title":"Explore the Collections" },
      {"link": "http://www.wikipedia.org", "title":"Travel + Market Info" },
      {"link": "http://www.cnn.com", "title":"About Us + Contact" }]
