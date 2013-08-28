'use strict'

angular.module('AMCClientApp', ['swiper'])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/exhibitor',
        templateUrl: 'views/exhibitor.html',
        controller: 'ExhibitorCtrl'
      .when '/home',
        templateUrl: 'views/home.html',
        controller: 'HomeCtrl'
      .otherwise
        redirectTo: '/'
