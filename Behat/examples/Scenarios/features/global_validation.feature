Feature: Restaurer validates a list of reservations
	In order to validate a list of reservations
	As a Restaurer
	I need to be able to choose an "validate" option by pressing a button

	Scenario Outline: Validate all reservations in the same time
		Given I pick up the phone
			And I listen to welcome message
			And I aware of a number of <total> reservations are waiting for validation
			And I am available to start the validation
			And I press button star
		When I press the button 1
		Then I should be aware of all <confirmed> reservations have been confirmed
			And I should have <left> reservations to validate

		Examples:
			| total | confirmed | left |
		 	| 15    | 15        | 0    |
		 	| 10    | 10        | 0    |


	Scenario Outline: Validate all reservations in the same time and receive a mail
		Given I pick up the phone
			And I listen to welcome message
			And I aware of a number of <total> reservations are waiting for validation
			And I am available to start the validation
			And I press button star
		When I press the button 1
			And I press the sub button 1
		Then I should be aware of all <confirmed> reservations have been confirmed
			And I should have <left> reservations to validate
			And I should receive a mail

		Examples:
			| total | confirmed | left |
		 	| 15    | 15        | 0    |
		 	| 10    | 10        | 0    |






