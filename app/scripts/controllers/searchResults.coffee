'use strict'

angular.module('AMCClientApp')
  .controller 'SearchresultsCtrl', ['$scope', 'browseByModel', ($scope, browseByModel) ->
    $scope.browseByModel = browseByModel

    $scope.isSearchResultsOpen = false

    $scope.displaySearch = () ->
      $scope.isSearchResultsOpen = true

    $scope.hideSearch = () ->
      $scope.isSearchResultsOpen = false

  ]

angular.module('AMCClientApp')
  .service 'browseByModel', () ->
      favorites =
        title: 'My Favorites'
        href: ''
        subNav: []

      category =
        title: 'Category'
        href: ''
        subNav: []

      events =
        title: 'Events'
        href: ''
        subNav: []

      exhibitor =
        title: 'Exhibitor'
        href: ''
        subNav: []

      productline =
        title: 'Product Line'
        href: ''
        subNav: []

      productline.subNav[0] =
        title: 'Market Wednesday'
        href: ''
        subNav: []

      guidebook =
        title: 'Guide Book'
        href: ''
        subNav: []

      guidebook.subNav[0] =
        title: 'Market Wednesday'
        href: ''
        subNav: []

      services =
        title: 'Services'
        href: ''
        subNav: []

      @list = [
        favorites
        category
        events
        exhibitor
        productline
        guidebook
        services
      ]
      return



