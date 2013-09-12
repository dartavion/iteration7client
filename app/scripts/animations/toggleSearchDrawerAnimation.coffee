angular.module('AMCClientApp')
  .animation '.open-search', ($window) ->
    width = document.body.clientWidth
    addClass: (element, className, done) ->
      TweenMax.set(element, {z:0.1})
      TweenMax.to(element, 0.7, {x: -width, autoRound:false, ease:Power4.easeInOut})
      return

    removeClass: (element, className) ->
      TweenMax.set(element, {z:0.1})
      TweenMax.to(element, 0.5, {x: 0, autoRound:false, ease:Power4.easeOut})
      return