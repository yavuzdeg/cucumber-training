@scenario_outline_1 @smoke
Feature: Multiple_google_search
  Background: use is navigate to google page
    Given user in on the google page
  Scenario Outline: searching_word_capitals
    Given user search for "<world_capitol>"
    Then verify the result has "<world_capitol>"
    Then close the application
    Examples: capitals
      |world_capitol|
      |paris        |
      |london       |
      |berlin       |
      |ankara       |
      |baku         |


  #@capital_search
  #Feature: Finding product on google search
  #Background: use is navigate to google page
   # Given user in on the google page
    #      Test data = iphone. "" will parametrize this data
#      This means this parameter can be any test data
 # Scenario: TC01_paris_search
 #   Given user search for "paris"
 #   Then verify the result has "paris"
 #   Then close the application
 # Scenario: TC02_london_search
   # Given user search for "london"
   # Then verify the result has "london"
  #  Then close the application
  #  .........