'use strict'

angular.module('AMCClientApp')
  .controller 'SearchresultsCtrl', [
    '$scope', 'browseByModel', 'ejsResource', 'ES_HOST', 'AT_HOST', '$http' 
    ( $scope, browseByModel, ejsResource, ES_HOST, AT_HOST, $http) ->

      $scope.browseByModel = browseByModel

      $scope.isSearchResultsOpen = false

      $scope.displaySearch = () ->
        $scope.isSearchResultsOpen = true

      $scope.hideSearch = () ->
        $scope.isSearchResultsOpen = false

      $scope.search = () ->

        if this.searchField.length >= 3
          ejs = ejsResource(ES_HOST)

          $scope.results = ejs.Request()
            .indices("amc") 
            .types("exhibitor")
            .fields([
              'EXHIBNAME',
              'CATEGORIES.EXHIBCATNAME',
              'BOOTHREQUESTS.BOOTHS.SHOW.SHOWDESC'
            ])
            .query(
              ejs.QueryStringQuery().defaultField('_all').query(this.searchField)
            )
            .doSearch();

          $http.get AT_HOST + "/track_activity", 
            params: 
              act_type: 'search'
              'params[search_term]': this.searchField
              'params[user_id]': 1
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

      services =
        title: 'Services'
        href: ''
        subNav: []

      for i in [0..10]
        favorites.subNav[i] =
          title: 'Lorem Ipsum'
          href: 'http://www.google.com'
        category.subNav[i] =
          title: 'Lorem Ipsum'
          href: 'http://www.google.com'
        events.subNav[i] =
          title: 'Lorem Ipsum'
          href: 'http://www.google.com'
        exhibitor.subNav[i] =
          title: 'Lorem Ipsum'
          href: 'http://www.google.com'
        productline.subNav[i] =
          title: 'Lorem Ipsum'
          href: 'http://www.google.com'
        guidebook.subNav[i] =
          title: 'Lorem Ipsum'
          href: 'http://www.google.com'
        services.subNav[i] =
          title: 'Lorem Ipsum'
          href: 'http://www.google.com'

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



