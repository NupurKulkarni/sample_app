Feature: Signing in

	Scenario: Unsuccessful Signin
		Given a user visits signin page
		When user enters invalid data
		Then user should see an error message

	Scenario: Successful Signin
		Given a user visits signin page
		And user has an account
		When the user enters valid and correct data
		Then the user should see his profile
