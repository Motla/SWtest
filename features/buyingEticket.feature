Feature: Buying Eticket

  Background:
    Given I am on the performance page
    And I buy  Etickets tickets
    When I go to the buyout page
    And  fill my personal details
    And my billing details

  Scenario: Eticket - Visa
    Then I can pay by Visa

  Scenario: Eticket - Mastercard
    Then I can pay by Mastercard

  Scenario: Eticket - Maestro
    Then I can pay by Maestro

  Scenario: Eticket - Amex
    Then I can pay by Amex