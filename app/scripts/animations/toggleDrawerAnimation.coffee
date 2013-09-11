angular.module('AMCClientApp')

  .animation '.open-drawer', ($window) ->

    addClass: (element, className, done) ->
      TweenMax.to(element, .2, {left: 250, ease:Power2.easeIn})
      return

    removeClass: (element, className) ->
      TweenMax.to(element, .2, {left: 0, ease:Power2.easeInOut})
      return