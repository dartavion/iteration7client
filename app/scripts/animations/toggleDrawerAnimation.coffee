angular.module('AMCClientApp')

  .animation '.open-drawer', ($window) ->

    addClass: (element, className, done) ->
      TweenLite.to(element, .3, {x: 250, ease:Power2.easeIn})
      return

    removeClass: (element, className) ->
      TweenLite.to(element, .3, {x: 0, ease:Power2.easeIn})
      return
