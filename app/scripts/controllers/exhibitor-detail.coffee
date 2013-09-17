'use strict'

angular.module('AMCClientApp')
  .controller 'ExhibitorDetail', ($scope, $routeParams, ejsResource, ES_HOST) ->

    if $routeParams.id
      ejs = ejsResource(ES_HOST)

      ejs.Request()
        .indices("amc") 
        .types("exhibitor")
        .query(ejs.IdsQuery($routeParams.id))
        .doSearch (resp) ->
          if resp.hits.hits[0]
            $scope.exhibitor = resp.hits.hits[0]._source

