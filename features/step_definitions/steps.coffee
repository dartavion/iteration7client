module.exports = ->
  @World = require('../support/world.coffee').World

  @Given /^I am on the homepage$/, (callback) ->
    @browser.get('http://localhost:9000').then ->
      callback()

  @Then /^I should see a "([^"]*)" link$/, (name, callback) ->
    @browser.findElement(@By.tagName 'span').getText().then (text) =>
      @assert.equal text, name
      callback()