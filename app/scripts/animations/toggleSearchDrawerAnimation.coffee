angular.module('AMCClientApp')
  .animation '.open-search', ($window) ->
    width = document.body.clientWidth
    addClass: (element, className, done) ->
      TweenMax.to(element, .2, {left: -width, ease:Power2.easeIn})
      return

    removeClass: (element, className) ->
      TweenMax.to(element, .2, {left: 0, ease:Power2.easeInOut})
      return