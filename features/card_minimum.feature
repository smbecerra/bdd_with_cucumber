Feature: Card Minimum

  Scenario: Total charge is over the $2 credit card minimum
  Given Maria orders $3 of coffee from Li
  When Maria pays with a credit Card
  Then Li should process the payment
