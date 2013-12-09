Feature: Performance - guess user

  Background:
    Given I am on the performance page
    And i buy  collectfrom tickets

  Scenario: Collectfrom - Visa
    Then I  go to the buyoutpage
    And fill the details
    And I can pay by Visa

  Scenario: Collectfrom - Mastercard
    When i buy  collectfrom tickets
    Then I  go to the buyoutpage
    And I can pay by Mastercard

  Scenario: Collectfrom - Paypal
    When i buy  collectfrom tickets
    Then I  go to the buyoutpage
    And I can pay by Paypal