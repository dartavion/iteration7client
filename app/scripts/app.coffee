'use strict'

angular.module('AMCClientApp', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/exhibitor',
        templateUrl: 'views/exhibitor.html',
        controller: 'ExhibitorCtrl'
      .otherwise
        redirectTo: '/'
