angular.module('AMCClientApp')

  .animation '.collapse', ($window) ->

    addClass: (element, className, done) ->
      TweenLite.to(element, .2, {height: 100, ease:Power2.easeIn})
      return

    removeClass: (element, className) ->
      TweenLite.to(element, .2, {height: 0, ease:Power2.easeInOut})
      return