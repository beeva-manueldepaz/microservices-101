@deleteCustomer
Feature: Customer edits his settings

  As a customer,
  In order to manage the notifications that application send to me
  I want to update my settings

  Scenario: a customer updates his notifications settings
    Given a customers with the following data:
      | id      | identityCard | name   | lastName  | email                           | phone     | avatar  |
      | abcdefg | 79986535X    | Alfred | Hitchcock | alfred.hitchcock@indiscreet.com | 636561241 | potatoe |
    When the customer "79986535X" updates his notifications to:
      | tooltips | alerts | news  | moneyRequests | moneyOrders |
      | false    | false  | false | false         | false       |
    Then the response must be "NO_CONTENT"
    And the customer "79986535X" has his notifications updated to
      | tooltips | alerts | news  | moneyRequests | moneyOrders |
      | false    | false  | false | false         | false       |