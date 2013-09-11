angular.module('AMCClientApp')

  .animation '.show-search-results', ($window) ->

    addClass: (element, className, done) ->
      TweenMax.to(element, .2, {opacity: 1.0, ease:Power2.easeIn})
      return

    removeClass: (element, className) ->
      TweenMax.to(element, .2, {opacity: 0, ease:Power2.easeInOut})
      return