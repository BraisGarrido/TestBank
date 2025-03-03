Feature: Banking Project - Functional test

  Background:
    Given The user opens the Banking Project homepage

  Scenario: Succesful customer login
    When The user clicks on "Customer Login"
    And Selects a user from the dropdown list
    And Clicks on "Login"
    Then The account dashboard should be displayed with "Transactions", "Deposit", and "Withdrawl" options

  Scenario: Attempt to log in without selecting a user
    When The user clicks on "Customer Login"
    And Doeas not select any user
    And Clicks on "Login"
    Then An error message should appear or login should not proceed

  Scenario: Successful Bank Manager Login
    When The user clicks on "Bank Manager Login"
    Then The options "Add Customer", "Open Account", and "Customers" should be displayed

  Scenario: Adding a new customer
    Given The user is logged in as a Customer
    When Clicks on "Deposit"
    And Enters "100" as the amount
    And Clicks on the "Deposit" button
    Then The message "Deposit Successful" should appear
    And The account balance should increase by 100

  Scenario: Successful money withdrawal with sufficient balance
    Given The user has at least 50 in their account
    When Clicks on "Withdrawl"
    And Enters "50" as the amount
    And Clicks on the "Withdraw" button
    Then The message "Transaction successful" should appear
    And The account balance should decrease by 50

  Scenario: Attempting to withdraw more than avaliable balance
    Given The user has a balance of 20
    When Clicks on "Withdraw"
    And Enters "50" as the amount
    And Clicks on the "Withdraw" button
    Then An error message should appear or the transaction should not be completed