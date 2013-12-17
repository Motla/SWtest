Feature: Buying ReadyForDelivery

  Background:
    Given I am on the performance page
    And I buy  ReadyforDelivery tickets
    When I go to the buyout page
    And  fill my personal details
    And my delivery details

  Scenario: Collectfrom - Visa
    Then I can pay by Visa

  Scenario: Collectfrom - Mastercard
    Then I can pay by Mastercard

  Scenario: Collectfrom - Paypal
    Then I can pay by Paypal

  Scenario: Collectfrom - Maestro
    Then I can pay by Maestro

  Scenario: Eticket - Amex
    Then I can pay by Amex