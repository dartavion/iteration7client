angular.module('AMCClientApp')
  .animation '.search-field', ($window) ->

    addClass: (element, className) ->
      console.log 'add class'
      TweenMax.to(element, .2, {top: 0, ease:Power2.easeOut})
      return

    removeClass: (element, className) ->
      console.log 'remove class'
      TweenMax.to(element, .2, {top: -50, ease:Power2.easeInOut})
      return