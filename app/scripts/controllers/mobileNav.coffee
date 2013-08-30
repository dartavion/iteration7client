'use strict'

angular.module('AMCClientApp')
.controller 'MobilenavCtrl', ($scope) ->
    $scope.primaryNavigation = [
      {"href": "", "title": 'Home'}
      {"href": "markets", "title": "Markets"}
      {"href": "campusmap", "title": "Campus Map"}
      {"href": "exhibitor", "title": "All Exhibitors"}
      {"href": "login", "title": "Login/Logout"}
      {"href": "services", "title": "Buyer Services", "subNav": [
        {"href": "stub", title: "First Time to Market"},
        {"href": "stub", title: "My Market Plan"},
        {"href": "stub", title: "Education Center"}
      ]}
      {"href": "services", "title": "Exhibitor Services", "subNav": [
        {"href": "stub", title: "First Time to Market"},
        {"href": "stub", title: "My Market Plan"},
        {"href": "stub", title: "Education Center"}
      ]}
      {"href": "collections", "title": "Explore the Collections", "subNav": [
        {"href": "stub", title: "First Time to Market"},
        {"href": "stub", title: "My Market Plan"},
        {"href": "stub", title: "Education Center"}
      ]},
      {"href": "travel", "title": "Travel + Market Info", "subNav": [
        {"href": "stub", title: "First Time to Market"},
        {"href": "stub", title: "My Market Plan"},
        {"href": "stub", title: "Education Center"}
      ]},
      {"href": "contact", "title": "About Us + Contact", "subNav": [
        {"href": "stub", title: "First Time to Market"},
        {"href": "stub", title: "My Market Plan"},
        {"href": "stub", title: "Education Center"}
      ]}
    ]

    $scope.toggleSubNav = () ->
      console.log 'got click'
      if $scope.sub_nav_class isnt 'open'
      then console.log 'ha'