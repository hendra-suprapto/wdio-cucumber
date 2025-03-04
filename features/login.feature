@login
Feature: Login Test

Background:
 Given user is on Login page

@positive @tc-1 @regression @smoketest
  Scenario: Success Login
  When user login using "<username>" as username and "<password>" as password
  And user should be redirected to homepage

Examples:
   | username      | password     |
   | standard_user | secret_sauce |
   | visual_user   | secret_sauce |

@negative @tc-2
Scenario: Login with wrong password
    Given user is on Login page
    And user input "standard_user" as username
    And user input "wrong_password" as password
    When user click login button 
    Then user should see error message "Epic sadface: Username and password do not match any user in this service"


# @login
# Feature: Login Test

# Background:
# Given user is on Login page

#   @positive @tc-1 @regression @smoketest
#   Scenario: Success Login
#     When user login using "<username>" as username and "<password>" as password
#     And user should be redirected to homepage

#   Example:
#   | username      | password     |
#   | standard_user | secret_sauce |
#   | visual_user   | secret_sauce |

#     @negative @tc-2
# Scenario: Login with wrong password
    
#     And user input "standard_user" as username
#     And user input "wrong_password" as password
#     When user click login button 
#     Then user should see error message "Epic sadface: Username and password do not match any user in this service"
