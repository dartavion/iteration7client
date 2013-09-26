'use strict'

angular.module('AMCClientApp')
  .controller 'ExhibitorCtrl', ($scope) ->
    $("body").addClass "exhibitor"  if location.hash is "#/exhibitor"

  $(document).ready ->

    setTimeout (->
      waiter = setInterval(->
        target = $("li.collapsible")
        if target.length < 1
          return
        else
          clearInterval waiter
          target.on "click", ->
            $(this).find("ul").toggle 500
      , 50)
    ), 0


