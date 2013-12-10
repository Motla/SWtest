Feature: Buying CollectFrom

#  Background:
#    Given I am on the performance page
#    And I buy  collectfrom tickets
#    When I go to the buyout page
#    And  fill my personal details
#    And my billing details
#
#  Scenario: Collectfrom - Visa
#    Then I can pay by Visa

#  Scenario: Collectfrom - Mastercard
   #When i buy  collectfrom tickets
#    Then I  go to the buyoutpage
#    And I can pay by Mastercard
#
#  Scenario: Collectfrom - Paypal
#    When i buy  collectfrom tickets
#    Then I  go to the buyoutpage
#    And I can pay by Paypal

  Scenario: Collectfrom - Visa
    Given I am on the performance page
    Then i buy  collectfrom tickets
