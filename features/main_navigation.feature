Feature: main navigation
  Scenario: navigate to markets
    Given I am on the homepage
    When I select the "navbar-toggle" button
    Then I should see a "Markets" link
