angular.module('AMCClientApp')
  .animation '.search-field', ($window) ->

    addClass: (element, className, done) ->
      TweenMax.set(element, {position: 'relative', width: '100%'})
      TweenMax.to(element, .2, {top: 0, ease:Power2.easeOut})
      return

    removeClass: (element, className) ->
      TweenMax.set(element, {position: 'absolute',width: '100%'})
      TweenMax.to(element, .2, {top: -50, ease:Power2.easeInOut})
      return