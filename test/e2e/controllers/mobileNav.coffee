'use strict'

describe 'Mobile Navigation', () ->
  beforeEach ->
    browser().navigateTo('/')

    it 'has 10 links', () ->
      expect(repeater('.side-nav ul li').count()).toBe(10)

  describe 'Navigation', () ->

    it 'navigates home', () ->
      expect(element('.side-nav ul li:eq(0) a span').html()).toBe('Home')
      element('.side-nav ul li:eq(0) a').click()
      expect(browser().location().path()).toBe("/")

    it 'navigates to markets', () ->
      expect(element('.side-nav ul li:eq(1) a span').html()).toBe('Markets')
      element('.side-nav ul li:eq(1) a').click()
      expect(browser().location().path()).toBe("/markets")

    it 'navigates to campus map', () ->
      expect(element('.side-nav ul li:eq(2) a span').html()).toBe('Campus Map')
      element('.side-nav ul li:eq(2) a').click()
      expect(browser().location().path()).toBe("/campusmap")

    it 'navigates to all exhibitors', () ->
      expect(element('.side-nav ul li:eq(3) a span').html()).toBe('All Exhibitors')
      element('.side-nav ul li:eq(3) a').click()
      expect(browser().location().path()).toBe("/exhibitor")

    it 'navigates to login', () ->
      expect(element('.side-nav ul li:eq(4) a span').html()).toBe('Login/Logout')
      element('.side-nav ul li:eq(4) a').click()
      expect(browser().location().path()).toBe("/login")

    it 'navigates to buyer services', () ->
      expect(element('.side-nav ul li:eq(5) a span').html()).toBe('Buyer Services')
      element('.side-nav ul li:eq(5) a').click()
      expect(browser().location().path()).toBe("/services")

    it 'navigates to exhibitor services', () ->
      expect(element('.side-nav ul li:eq(6) a span').html()).toBe('Exhibitor Services')
      element('.side-nav ul li:eq(6) a').click()
      expect(browser().location().path()).toBe("/services")

    it 'navigates to explore the collections', () ->
      expect(element('.side-nav ul li:eq(7) a span').html()).toBe('Explore the Collections')
      element('.side-nav ul li:eq(7) a').click()
      expect(browser().location().path()).toBe("/collections")

    it 'navigates to travel + market info', () ->
      expect(element('.side-nav ul li:eq(8) a span').html()).toBe('Travel + Market Info')
      element('.side-nav ul li:eq(8) a').click()
      expect(browser().location().path()).toBe("/travel")

    it 'navigates to About Us + Contact', () ->
      expect(element('.side-nav ul li:eq(9) a span').html()).toBe('About Us + Contact')
      element('.side-nav ul li:eq(9) a').click()
      expect(browser().location().path()).toBe("/contact")