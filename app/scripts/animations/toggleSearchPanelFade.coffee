angular.module('AMCClientApp')

  .animation '.fade-search-panel', ($window) ->

    addClass: (element, className, done) ->
      TweenLite.set(element, {display:'block'})
      TweenLite.to(element, .7, {opacity: 1.0, ease:Power2.easeIn})
      return

    removeClass: (element, className) ->
      # When the fade is complete we need to set the display
      # to remove the click/touch blocking
      onCompletedFade = () ->
        TweenLite.set(element, {display:'none'})

      TweenLite.to(element, .7, {opacity: 0, ease:Power2.easeInOut, onComplete:onCompletedFade})

      return


angular.module('AMCClientApp')

  .animation '.fade-nav-panel', ($window) ->

      addClass: (element, className, done) ->
        TweenLite.set(element, {display:'block'})
        TweenLite.to(element, .5, {opacity: 1.0, ease:Power2.easeIn})
        return

      removeClass: (element, className) ->
        TweenLite.to(element, .5, {opacity: 0, ease:Power2.easeInOut})
        return
