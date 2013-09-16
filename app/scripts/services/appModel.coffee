'use strict';

angular.module('AMCClientApp')
  .factory 'appModel', () ->

    isNavDrawerOpen = false

    isNavPanelFaded = false

    nav = [
      {title:'Home', href:'home'},
      {title:'Markets', href:'markets'},
      {title:'Campus Map', href:'campusmap'},
      {title:'All Exhibitors', href:'exhibitor'},
      {title:'Login', href:'login'},
      {title:'Buyer Services', href:'', subNav:[
        {title:'First Time to Market', href: 'services'},
        {title: 'My Market Plan', href: 'services'},
        {title: 'Education Center', href: 'services'}
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

      getIsNavDrawerOpen: () ->
        isNavDrawerOpen

      setIsNavDrawerOpen: (value) ->
        isNavDrawerOpen = not value

      getIsNavPanelFaded: () ->
        isNavPanelFaded

      setIsNavPanelFaded: (value) ->
        isNavPanelFaded = not value

    }
