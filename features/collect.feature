# language: en
Feature: Collect
  In order to avoid silly mistakes
  Cashiers must be able to calculate a fraction

  Scenario: Regular numbers
    * I have entered 3 into the calculator
    * I have entered 2 into the calculator
    * I press collect
    * the result should be 5 on the screen
