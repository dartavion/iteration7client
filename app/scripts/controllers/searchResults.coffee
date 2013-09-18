'use strict'

angular.module('AMCClientApp')
  .controller 'SearchresultsCtrl', ['$scope', 'ejsResource', 'ES_HOST', ( $scope, ejsResource, ES_HOST) ->

    $scope.isSearchResultsOpen = false

    $scope.displaySearch = () ->
      $scope.isSearchResultsOpen = true

    $scope.hideSearch = () ->
      $scope.isSearchResultsOpen = false

    $scope.search = () ->

      if this.searchField.length > 3
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
  ]





