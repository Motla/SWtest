Feature: Buying CollectFrom

  Background:
    Given I am on the performance page
    And I buy  collectfrom tickets
    When I go to the buyout page
    And  fill my personal details
    And my billing details

  Scenario: Collectfrom - Visa
    Then I can pay by Visa

  Scenario: Collectfrom - Mastercard
    Then I can pay by Mastercard

  Scenario: Collectfrom - Paypal
    Then I can pay by Paypal

  Scenario: Collectfrom - Paypal
    Then I can pay by Maestro
