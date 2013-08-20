Feature: Restaurer refuses to be recontacted and want to manage its reservation by himself
	In order to never be recalled in the future and manage all reservations by myself
	As a Restaurer
	I need to be able to choose an "never call" option by pressing a button

	Scenario Outline: Manage reservations and refuse to be recontacted by phone
		Given I pick up the phone
			And I listen to welcome message
			And I aware of a number of <total> reservations are waiting for validation
			And I am available to start the validation
			And I press button star
		When I press button 3
		Then I should be able to not receive any phone call in the future
			And <rest> reservations should be waiting for validation

		Examples:
			| total | rest |
			| 15    | 15   |
			| 8     | 8    |
