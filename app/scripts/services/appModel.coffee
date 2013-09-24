'use strict';

angular.module('AMCClientApp')
  .factory 'appModel', () ->

    isNavDrawerOpen = false

    isNavPanelFaded = false

    isSearchDrawerOpen = false

    isSearchPanelFaded = false

    isCollapsed = false

    isSearchResultsOpen = false

    browseBy = [
      {title: 'My Favorites', href: '', subNav: []},
      {title: 'Category', href: '', subNav: []},
      {title: 'Events', href: '', subNav: []},
      {title: 'Exhibitor', href: '', subNav: []},
      {title: 'Product Line', href: '', subNav: []}
    ]

    for item in browseBy
      for i in [0..10]
        item.subNav[i] =
          title: 'Lorem Ipsum'
          href: 'http://www.google.com'


    nav = [
      {title:'Home', href:'home'},
      {title:'Markets', href:'markets'},
      {title:'Campus Map', href:'campusmap'},
      {title:'All Exhibitors', href:'exhibitor'},
      {title:'Login', href:'login'},
      {title:'Buyer Services', href:'', subNav:[
        {title:'First Time to Market', href: 'services'},
        {title: 'Fast Badge', href: 'services'},
        {title: 'Market Registration', href: 'services'},
        {title: 'Events', href: 'services'},
        {title: 'Buyer Resources', href: 'services'}
      ]},
      {title:'Exhibitor Services', href:'', subNav:[
        {title:'First Time to Market', href: 'services'},
        {title: 'My Market Plan', href: 'services'},
        {title: 'Education Center', href: 'services'}
      ]},
      {title:'Explore the Collections', href:'', subNav:[
        {title:'First Time to Market', href: 'services'},
        {title: 'My Market Plan', href: 'services'},
        {title: 'Education Center', href: 'services'}
      ]},
      {title:'Travel + Market Info', href:'', subNav:[
        {title:'First Time to Market', href: 'services'},
        {title: 'My Market Plan', href: 'services'},
        {title: 'Education Center', href: 'services'}
      ]},
      {title:'About Us + Contact', href:'', subNav:[
        {title:'First Time to Market', href: 'services'},
        {title: 'My Market Plan', href: 'services'},
        {title: 'Education Center', href: 'services'}
      ]}
    ]


    {

      getNav: () ->
        nav

      getBrowseBy: () ->
        browseBy

      getIsNavDrawerOpen: () ->
        isNavDrawerOpen

      setIsNavDrawerOpen: (value) ->
        isNavDrawerOpen = not value

      getIsNavPanelFaded: () ->
        isNavPanelFaded

      setIsNavPanelFaded: (value) ->
        isNavPanelFaded = not value

      getIsSearchDrawerOpen: () ->
        isSearchDrawerOpen

      setIsSearchDrawerOpen: (value) ->
        isSearchDrawerOpen = not value

      getIsSearchPanelFaded: () ->
        isSearchPanelFaded

      setIsSearchPanelFaded: (value) ->
        isSearchPanelFaded = not value

      getIsSearchResultsOpen: () ->
        isSearchResultsOpen

      setIsSearchResultsOpen: (value) ->
        isSearchResultsOpen = not value

      getIsCollapsed: () ->
        isCollapsed

      setIsCollapsed: (value) ->
        isCollapsed = not value
    }
