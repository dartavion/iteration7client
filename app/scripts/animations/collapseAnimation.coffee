angular.module('AMCClientApp')

  .animation '.collapse', ($window) ->

    addClass: (element, className, done) ->
#      TweenLite.set(element, {position: 'absolute'})
      TweenLite.to(element, .2, {height:'100%'})
      return

    removeClass: (element, className) ->
      TweenLite.to(element, .2, {height:'2%'})
      return