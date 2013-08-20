Feature: Restaurer validates a list of reservations one by one
	In order to validate a list of reservations one by one
	As a Restaurer
	I need to be able to choose an "listen details" option by pressing a button

	Scenario Outline: Validate each reservation one by one and choose a sub option
		Given I pick up the phone
			And I listen to welcome message
			And I aware of a number of reservations are waiting for validation
			And I am available to start the validation
			And I press button star
		When I press button 2
			And I press sub button <sub_button>
		Then I should be able to listen the details of each reservation
			And I should be able to <action>

		Examples:
			| sub_button | action					 									|
		 	| 1          | validate this reservation 									|
		 	| 2          | cancel this reservation   									|
		 	| 3          | talk to an LF agent that will close the restaurant service	|