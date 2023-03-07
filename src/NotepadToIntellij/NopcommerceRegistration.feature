Feature: Nopcommerce Registration

  As a user I want to check the Register functionality of Nopcommerce


  Background: I am on Nopcommerce Registration page
    Given     I open the Google chrome browser
    When      I open the URL https://demo. nopcommerce.com/register
    Then      I am on Nopcommerce registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field(*) of registration page
    When      I enter First Name "<First Name>"
    And       I enter Last Name "<Last Name>"
    And       I enter Email Address "<Email>"
    And       I enter Password "<Password>"
    And       I enter Confirm Password "<Confirm Password>"
    And       Click on Register Button
    Then      I can see an error message"<Error Message>"
    And       I am not able to register

    Examples:
    | First Name          | Last Name           | Email               | Password        | Confirm Password      | Error Message                               |
    | ""                  | Bakshi              | bakshi@gmail.com    |456897           | 456897                | Please enter First Name                     |
    | Rohan               | ""                  | bakshi@gmail.com    |456897           | 456897                | Please enter Last Name                      |
    | Rohan               | Bakshi              | ""                  |456897           | 456897                | Please enter Valid Email address            |
    | Rohan               | Bakshi              | bakshi@gmail.com    | ""              | 456897                | Password is Required                        |
    | Rohan                | Bakshi             | bakshi@gmail.com    |456897           | ""                    | Confirm Password is required                |
    | Rohan               | Bakshi              | bakshi@gmail.com    |456897           | 45689                 | Confirm password is not match               |
    | Rohan               | Bakshi              | bakshi@gmail.com    |45689            | ""                    | Minimum 6 charactor Password is required    |
    | ""                  | ""                  | ""                  | ""              | ""                    | Mandatory (*) field is required             |

  Scenario: I should be able to select any one radio button from Gender Label of your personal details section
    Given   I am on Gender label of your persnal detail section
    When    I select "<Male>" radio button
    And     I select "<Female>" radio button
    Then    I am able to select any one of the radio button

  Scenario Outline: I should be able to select Day, Month and Year from deop downlist of Date of birth field
    Given   I am on Date of Birth field of your Personal Detail section
    When    I select  day "<Day>"
    And     I select Month "<Month>"
    And     I select Year "<Year>"
    Then    I am able to select Day, Month and Year from drop down list

    Examples:
    | Day       | Month       | Year       |
    | 11        | November    | 1989       |

  Scenario: I should be able to check and uncheck the Newsletter check box on option section
    Given   I am on Newsletter label on option section
    When    I click on Newsletter checkbox
    And     I again click on Newsletter Check box
    Then    I was able to check and uncheck the box next to Newsletter label

  Scenario: I should be able to register with valid mandatory (*) field data in registration page
    When    I enter First Name "Rohan"
    And     I enter Last Name "Bakshi"
    And     I enter Email address "bakshi@gmail.com"
    And     I enter Password "456897"
    And     I enter Confirm Password "456897"
    And     Click on Register Button
    Then    I was able to register successfully
