Feature: Amazon Search functionality
  Scenario: searching mobile phones on Amazon
    Given a user goes to Amazon home page
    When a user search for "mobile phones."
    Then amazon should return result for "mobile kkkhones."