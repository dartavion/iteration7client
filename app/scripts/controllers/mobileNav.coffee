'use strict'

angular.module('AMCClientApp')
.controller 'MobilenavCtrl', ($scope, $rootScope) ->
    $scope.primaryNavigation = [
      {"href": "", "title": 'Home'}
      {"href": "markets", "title": "Markets"}
      {"href": "campusmap", "title": "Campus Map"}
      {"href": "exhibitor", "title": "All Exhibitors"}
      {"href": "login", "title": "Login/Logout"}
      {"href": "javascript:void(0)", "title": "Buyer Services", "subNav": [
        {"href": "stub", title: "First Time to Market"},
        {"href": "stub", title: "My Market Plan"},
        {"href": "stub", title: "Education Center"}
      ]}
      {"href": "javascript:void(0)", "title": "Exhibitor Services", "subNav": [
        {"href": "services", title: "First Time to Market"},
        {"href": "services", title: "My Market Plan"},
        {"href": "services", title: "Education Center"}
      ]}
      {"href": "javascript:void(0)", "title": "Explore the Collections", "subNav": [
        {"href": "collections", title: "First Time to Market"},
        {"href": "collections", title: "My Market Plan"},
        {"href": "collections", title: "Education Center"}
      ]},
      {"href": "javascript:void(0)", "title": "Travel + Market Info", "subNav": [
        {"href": "travel", title: "First Time to Market"},
        {"href": "travel", title: "My Market Plan"},
        {"href": "travel", title: "Education Center"}
      ]},
      {"href": "javascript:void(0)", "title": "About Us + Contact", "subNav": [
        {"href": "contact", title: "First Time to Market"},
        {"href": "contact", title: "My Market Plan"},
        {"href": "contact", title: "Education Center"}
      ]}
    ]

    $rootScope.closeMe = () ->
      console.log 'ha'