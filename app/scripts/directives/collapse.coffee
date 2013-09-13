'use strict';

angular.module('AMCClientApp')
  .directive 'collapsed', ($timeout, $window, $animate) ->

    linker = (scope, element, attrs) ->
      scope.$watch attrs.collapsed, 'onCollapseChange'

      scope.$on 'collapseChange', (event, args) ->
        $animate.addClass element, 'collapse'

        if args.id is element[0].id
          if element.hasClass('collapse')
            $animate.removeClass element, 'collapse'
          else
            $animate.addClass element, 'collapse'


    restrict: 'A'
    link: linker

#    fixUpHeight = (scope, element, height) ->
#
#      element.removeClass('collapse')
#      element.css({ height: height })
#
#      x = element[0].offsetWidth
#      element.addClass('collapse')
#        if args.id is element.find('id')

#      (value) ->
#
#        if(value)
#          element.addClass('collapse')
#        else element.removeClass('collapse')
#      isCollapsed
#      initialAnimSkip = true
#
#      scope.$watch ->
#        element[0].scrollHeight
#        (value) ->
#          if element[0].scrollHeight isnt 0
#            if not isCollapsed
#              if initialAnimSkip
#                fixUpHeight(scope, element, element[0].scrollHeight + 'px')
#              else
#                fixUpHeight(scope, element, 'auto')
#
#      scope.$watch attrs.collapse, (value) ->
#        if value
#          collapse()
#        else expand()
#
#      currentTransition
#
#      doTransition = (change) ->
#        if currentTransition
#          currentTransition.cancel()
#
#        currentTransition = $transition(element,change)
#
#        currentTransition.then () ->
#        currentTransition = undefined
#
#        () ->
#          currentTransition = undefined
#
#        currentTransition
#
#      expand = () ->
#        if initialAnimSkip
#          initialAnimSkip = false
#
#          if not isCollapsed
#            fixUpHeight(scope, element, 'auto')
#
#        else doTransition({ height : element[0].scrollHeight + 'px' }).then () ->
#
#            if not isCollapsed
#              fixUpHeight(scope, element, 'auto')
#
#        isCollapsed = false
#
#      collapse = () ->
#        isCollapsed = true
#        if initialAnimSkip
#          initialAnimSkip = false
#          fixUpHeight(scope, element, 0)
#        else
#          fixUpHeight(scope, element, element[0].scrollHeight + 'px')
#          doTransition({'height':'0'})

