angular.module('AMCClientApp')
  .animation '.fade', () ->
      addClass: (element, className) ->
        TweenMax.to(element, 1.0,{opacity: 0})

      removeClass: (element, className) ->
        TweenMax.to(element, 1.0,{opacity: 1.0})

