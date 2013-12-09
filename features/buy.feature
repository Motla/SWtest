Feature: BUY - guess user

  Background:
    Given I am on the buyout page

  Scenario: Visa
    Then I can pay by Visa

  Scenario: Mastercard
    Then I can pay by Mastercard

  Scenario: Maestro
    Then I can pay by Maestro
###    And 3D secure should fire
#
 Scenario: Paypal
    Then I can pay by Paypal

  Scenario: 3dsecure
    Then I can pay by Visa with 3D secure

