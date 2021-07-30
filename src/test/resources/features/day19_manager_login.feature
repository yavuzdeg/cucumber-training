@manager_login @regression
Feature: Manger_login_test
  Scenario Outline: TC_01_reservation_manager_profile
    Given user is on the application_login page
    And user enters manager_id "<manager_id>"
    And user enters manager_password "<manager_password>"
    And clicks on login button
    And verify login "<default_page_id>" is displayed
    Then close the application
    Examples:
      |manager_id|manager_password|default_page_id|
      |manager   |Manager1!       |manager        |
      |manager2  |Manager2!       |manager2       |
      |manager3  |Manager3!       |manager3       |



    # (long way:)
 # @manager_login
 # Feature: Manger_login_test
 #  Scenario: TC_01_reservation_manager_profile
  #  Given user is on the application_login page
  #  And user enters manager_id "manager"
  #  And user enters manager_password "Manager1!"
  #  And clicks on login button
  #  And verify login "manager" is displayed
   # Then close the application

  #  (and we write other two id and password like above.....)