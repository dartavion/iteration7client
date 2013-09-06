'use strict'

angular.module('AMCClientApp', ['swiper', 'ngRoute', 'ngAnimate'])
  .config ($routeProvider, $locationProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/home.html'
        controller: 'HomeCtrl'
      .when '/exhibitors-list',
        templateUrl: 'views/exhibitors-list.html',
        controller: 'ExhibitorslistCtrl'
      .when '/exhibitor-detail',
        templateUrl: 'views/exhibitor-detail.html',
        controller: 'ExhibitorDetail'
      .when '/exhibitor',
        templateUrl: 'views/exhibitor.html',
        controller: 'ExhibitorCtrl'
      .when '/home',
        templateUrl: 'views/home.html',
        controller: 'HomeCtrl'
      .when '/login',
        templateUrl: 'views/login.html',
        controller: 'LoginCtrl'
      .when '/markets',
        templateUrl: 'views/markets.html',
        controller: 'MarketsCtrl'
      .when '/campusmap',
        templateUrl: 'views/campusmap.html',
        controller: 'CampusmapCtrl'
      .when '/services',
        templateUrl: 'views/services.html',
        controller: 'ServicesCtrl'
      .when '/collections',
        templateUrl: 'views/collections.html',
        controller: 'CollectionsCtrl'
      .when '/travel',
        templateUrl: 'views/travel.html',
        controller: 'TravelCtrl'
      .when '/contact',
        templateUrl: 'views/contact.html',
        controller: 'ContactCtrl'
      .otherwise
        redirectTo: '/home'
#    $locationProvider.html5Mode(true)
