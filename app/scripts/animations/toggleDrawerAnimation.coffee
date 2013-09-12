angular.module('AMCClientApp')

  .animation '.open-drawer', ($window) ->

    addClass: (element, className, done) ->
      TweenMax.set(element, {z:0.1})
      TweenMax.to(element, .3, {x: 250, ease:Power2.easeInOut})
      return

    removeClass: (element, className) ->
      TweenMax.set(element, {z:0.1})
      TweenMax.to(element, .3, {x: 0, ease:Power2.easeInOut})
      return
