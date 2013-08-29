'use strict'

angular.module('AMCClientApp', ['swiper'])
  .config ($routeProvider, $locationProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/home.html'
        controller: 'HomeCtrl'
      .when '/exhibitor',
        templateUrl: 'views/exhibitor.html',
        controller: 'ExhibitorCtrl'
      .when '/home',
        templateUrl: 'views/home.html',
        controller: 'HomeCtrl'
      .when '/login',
        templateUrl: 'views/login.html',
        controller: 'LoginCtrl'
      .otherwise
        redirectTo: '/home'
    $locationProvider.html5Mode(true)
