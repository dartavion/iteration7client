angular.module('AMCClientApp')

  .animation '.show-search-results', ($window) ->

    addClass: (element, className, done) ->
      TweenLite.to(element, .2, {opacity: 1.0, ease:Power2.easeIn})
      return

    removeClass: (element, className) ->
      TweenLite.to(element, .2, {opacity: 0, ease:Power2.easeIn})
      return
