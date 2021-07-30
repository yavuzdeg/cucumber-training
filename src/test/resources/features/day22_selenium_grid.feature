@selenium_grid
Feature: verify_application_title
  Scenario: verify_title_on_chrome
    Given user is on the application_login page with chrome
    Then verify the tile includes Resortsline

#    How can i run on firefox
  Scenario: verify_title_on_firefox
    Given user is on the application_login page with firefox
    Then verify the tile includes Resortsline
#NOTE: Commend out Hooks class for better test execution with grid
