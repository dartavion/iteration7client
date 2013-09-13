'use strict';

angular.module('AMCClientApp')
  .factory 'Searchservice', ($http, $q) ->
    baseUrl = 'scripts/'
    #baseUrl = 'https://noterious.firebaseio.com/'

    find = () ->
      deferred = $q.defer()
      url = baseUrl +  'data/search.json'

      $http.get(url).success(deferred.resolve).error(deferred.reject)

      return deferred.promise;

    fetch = () ->



