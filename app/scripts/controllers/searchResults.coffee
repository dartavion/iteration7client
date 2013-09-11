'use strict'

angular.module('AMCClientApp')
  .controller 'SearchresultsCtrl', ['$scope', 'browseByModel', ($scope, browseByModel) ->
    $scope.browseByModel = browseByModel
  ]

angular.module('AMCClientApp')
  .service 'browseByModel', () ->
      favorites =
        title: 'My Favorites'

      category =
        title: 'Category'

      events =
        title: 'Events'

      exhibitor =
        title: 'Exhibitor'

      productline =
        title: 'Product Line'
        subNav: []

      guidebook =
        title: 'Guide Book'
        subNav: []

      guidebook.subNav[0] =
        title: 'Market Wednesday'

      services =
        title: 'Services'


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



