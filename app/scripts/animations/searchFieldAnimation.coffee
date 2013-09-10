angular.module('AMCClientApp')
  .animation '.search-field', ($window) ->

    addClass: (element, className, done) ->
#      TweenMax.set(element, {position: 'relative', width: '100%'})
      TweenMax.to(element, .2, {right: 0, ease:Power2.easeOut})
#      TweenMax.to(element, 2, {rotationX:180, transformOrigin:"top"})
      return

    removeClass: (element, className) ->
#      TweenMax.set(element, {position: 'absolute',width: '100%'})
      TweenMax.to(element, .2, {left: 0, ease:Power2.easeInOut})
#      TweenMax.to(element, 2, {transformPerspective:500, rotation:120, y:50})
      return