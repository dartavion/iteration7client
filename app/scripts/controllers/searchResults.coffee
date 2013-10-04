'use strict'

angular.module('AMCClientApp')
  .controller 'SearchresultsCtrl', [
    '$scope', 'ejsResource', 'ES_HOST', 'AT_HOST', '$http'
    ( $scope, ejsResource, ES_HOST, AT_HOST, $http, localStorageService) ->

      ejs = ejsResource(ES_HOST)

      $scope.isSearchResultsOpen = false

      $scope.displaySearch = () ->
        $scope.isSearchResultsOpen = true

      $scope.hideSearch = () ->
        $scope.isSearchResultsOpen = false

      $scope.addMeToFavorites = () ->
        alert("Add Favorite Feature!!!")

      $scope.clearSearchField = () ->
        @searchField = ''

      $scope.$on 'showList', () ->
        console.log 'List'
        $scope.isList = true
        $scope.isMap = false
        $scope.isFloor = false


      $scope.$on 'showMap', () ->
        console.log 'Map'
        $scope.isList = false
        $scope.isMap = true
        $scope.isFloor = false
      $scope.$on 'showFloor', () ->
        console.log 'Floor'
        $scope.isList = false
        $scope.isMap = false
        $scope.isFloor = true

      $scope.search = () ->

        if this.searchField.length >= 3

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

      $scope.facets = () ->

        categoryFacet = ejs.TermsFacet('categories')
           .field('EXHIBCATNAME')
           .size(100000)

        lineFacet = ejs.TermsFacet('lines')
           .field('EXHIBLINENAME')
           .size(100000)

        salesRepFacet = ejs.TermsFacet('salesRep')
          .scriptField("(FIRSTNAME + ' ' + LASTNAME in _source.STAFF) + ' ' + _source.EXHIBITORID")
          .size(2000)

        $scope.exhibitorFacets = ejs.Request()
          .indices("amc")
          .types("exhibitor")
          .fields(['EXHIBNAME'])
          .facet(categoryFacet)
          .facet(lineFacet)
          .facet(salesRepFacet)
          .doSearch()

        $scope.markets = ejs.Request()
          .indices("amc")
          .types("market")
          .fields(['NAME','TEMPORARIESDATES','VISIBLEDATES'])
          .size(20)
          .doSearch()

      $scope.facets()
  ]





