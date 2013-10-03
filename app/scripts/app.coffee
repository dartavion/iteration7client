'use strict'

angular.module('AMCClientApp', ['ui.router','ngAnimate', 'ngTouch', 'ngMobile', 'elasticjs.service', 'configuration'])
.config ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise('/home')
    $stateProvider
      .state 'home',
          url: '/home',
          templateUrl: 'views/home.html',
          controller: 'HomeCtrl'
      .state 'floor-details',
          url: '/floor-details',
          templateUrl: 'views/partials/floor-details.html'
      .state 'exhibitors-list',
          url: '/exhibitors-list',
          templateUrl: 'views/exhibitors-list.html',
          controller: 'ExhibitorslistCtrl'
      .state 'exhibitor-detail',
          url: '/exhibitor/:id',
          templateUrl: 'views/exhibitor-detail.html',
          controller: 'ExhibitorDetail'
      .state 'exhibitor',
          url: '/exhibitor',
          templateUrl: 'views/exhibitor.html',
          controller: 'ExhibitorCtrl'
      .state 'login',
          url: '/login'
          templateUrl: 'views/login.html'
      .state 'markets',
          url: '/markets'
          templateUrl: 'views/markets.html'
      .state 'campusmap',
          url: '/campusmap',
          templateUrl: 'views/campusmap.html'
      .state 'services',
          url: '/services',
          templateUrl: 'views/services.html'
      .state 'collections',
          url: '/collections',
          templateUrl: 'views/collections.html'
      .state 'travel',
          url: '/travel',
          templateUrl: 'views/travel.html'
      .state 'contact',
          url: '/contact',
          templateUrl: 'views/contact.html'

      .state
        name: 'search-list',
        url: '/search/list',
        views:
          'search-views':
            templateUrl: 'views/partials/search-list-view.html'

      .state
        name: 'search-map',
        url: '/search/map',
        views:
          'search-views':
            templateUrl: 'views/partials/search-map-view.html',
            controller: 'SearchContextButtonsCtrl'

      .state
        name: 'search-floor',
        url: '/search/floor',
        views:
          'search-views':
            templateUrl: 'views/partials/search-floor-view.html'

  #    $locationProvider.html5Mode(true)
