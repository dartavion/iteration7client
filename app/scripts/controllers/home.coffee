'use strict'

angular.module('AMCClientApp')
  .controller 'HomeCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    scrollPosition = []

    $scope.toggleNav = () ->
      toggle()

    toggle = () ->
      scrollPosition = [
        self.pageXOffset || document.documentElement.scrollLeft || document.body.scrollLeft,
        self.pageYOffset || document.documentElement.scrollTop  || document.body.scrollTop
      ]
      nav = document.querySelectorAll('.mobile-nav')[0]
      body = document.querySelectorAll('.body-content')[0]
      if $(nav).hasClass('open')
      then hideNav(nav, body)
      else showNav(nav, body)

    showNav = (nav, body) ->
      $(nav).addClass('open')
      $(body).addClass('open')
      lockScroll()

    hideNav = (nav, body) ->
      $(nav).removeClass('open')
      $(body).removeClass('open')
      unlockScroll()

    lockScroll = () ->
      body = $('body')
      body.data('scroll-position', scrollPosition)
      body.data('previous-overflow', body.css('overflow'))
      body.css('overflow', 'hidden')
      window.scrollTo(scrollPosition[0], scrollPosition[1])

    unlockScroll = () ->
      body = $('body')
      scrollPosition = body.data('scroll-position')
      body.css('overflow', body.data('previous-overflow'))
      window.scrollTo(scrollPosition[0], scrollPosition[1])





