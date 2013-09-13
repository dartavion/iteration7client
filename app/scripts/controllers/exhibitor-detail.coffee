'use strict'

angular.module('AMCClientApp')
  .controller 'ExhibitorDetail', ($scope, $routeParams, ejsResource) ->

    if $routeParams.id
      ejs = ejsResource('http://ec2-50-16-50-39.compute-1.amazonaws.com:9200')

      ejs.Request()
        .indices("amc") 
        .types("exhibitor")
        .query(ejs.IdsQuery($routeParams.id))
        .doSearch (resp) ->
          if resp.hits.hits[0]
            $scope.exhibitor = resp.hits.hits[0]._source

