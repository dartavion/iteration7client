angular.module('AMCClientApp')
  .animation '.open-search', ($window) ->

    width = document.body.clientWidth

    addClass: (element, className, done) ->
      TweenLite.to(element, .5, {x: -width, autoRound:false, ease:Power4.easeIn})
      return

    removeClass: (element, className) ->
      TweenLite.to(element, .5, {x: 0, autoRound:false, ease:Power4.easeIn})
      return