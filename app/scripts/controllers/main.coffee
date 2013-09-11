'use strict'

angular.module('AMCClientApp')
  .controller 'MainCtrl', ['$scope', '$rootScope', 'navModel', ($scope, $rootScope, navModel) ->

    $scope.navModel = navModel

    $rootScope.isNavDrawerOpen = false

    $scope.navIsSelected = (navItem) ->
      navItem is navModel.selectedItem

    $rootScope.toggleNav = () ->
      $rootScope.isNavDrawerOpen = not $rootScope.isNavDrawerOpen

    $rootScope.bodyTouchListener = () ->
      if $scope.isNavDrawerOpen
        $rootScope.toggleNav()

]

angular.module('AMCClientApp')
  .service 'navModel', () ->
    home =
      title: 'Home'
      href: 'home'

    markets =
      title: 'Markets'
      href: 'markets'

    campusmap =
      title: 'Campus Map'
      href: 'campusmap'

    exhibitor =
      title: 'All Exhibitors'
      href: 'exhibitor'

    login =
      title: 'Login'
      href: 'login'

    buyerService =
      title: 'Buyer Services'
      href: ''
      subNav: []

    buyerService.subNav[0] =
      title: 'First Time to Market'
      href: 'services'

    buyerService.subNav[1] =
      title: 'My Market Plan'
      href: 'services'

    buyerService.subNav[2] =
      title: 'Education Center'
      href: 'services'

    exhibitorService =
      title: 'Exhibitor Services'
      href: ''
      subNav: []

    exhibitorService.subNav[0] =
      title: 'First Time to Market'
      href: 'services'

    exhibitorService.subNav[1] =
      title: 'My Market Plan'
      href: 'services'

    exhibitorService.subNav[2] =
      title: 'Education Center'
      href: 'services'

    explore =
      title: 'Explore the Collections'
      href: ''
      subNav: []

    explore.subNav[0] =
      title: 'First Time to Market'
      href: 'services'

    explore.subNav[1] =
      title: 'My Market Plan'
      href: 'services'

    explore.subNav[2] =
      title: 'Education Center'
      href: 'services'

    travel =
      title: 'Travel + Market Info'
      href: ''
      subNav: []

    travel.subNav[0] =
      title: 'First Time to Market'
      href: 'services'

    travel.subNav[1] =
      title: 'My Market Plan'
      href: 'services'

    travel.subNav[2] =
      title: 'Education Center'
      href: 'services'

    about =
      title: 'About Us + Contact'
      href: ''
      subNav: []

    about.subNav[0] =
      title: 'First Time to Market'
      href: 'services'

    about.subNav[1] =
      title: 'My Market Plan'
      href: 'services'

    about.subNav[2] =
      title: 'Education Center'
      href: 'services'

    @list = [
      home
      markets
      campusmap
      exhibitor
      login
      buyerService
      exhibitorService
      explore
      travel
      about
    ]
    return
