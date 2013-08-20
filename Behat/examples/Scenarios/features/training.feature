Feature: Restaurer wants to be trained by a LF agent
	In order to be trained by a LF agent
	As a Restaurer
	I need to be able to choose an "need training" option by pressing a button

	Scenario Outline: Get trained by a LF agent
		Given I pick up the phone
			And I listen to welcome message
			And I aware of a number of <total> reservations are waiting for validation
			And I am available to start the validation
			And I press button star
		When I press button 4
		Then I should be able to be contacted by a agent
			And <rest> reservations should be waiting for validation

		Examples:
			| total | rest |
			| 15    | 15   |
			| 8     | 8    |
