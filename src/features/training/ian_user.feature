Feature: Test the user entry
			As a user of the site
			I want to be able to enter my name and submit it as a user

Scenario: Welcome text on site matches expected
			Given I open the site "/"
			When I set "Ian" to the inputfield "#username-input"
			And I click on the button "#user-name-submit-btn"
			Then I expect that element "#user-msg" not contains the text "ERROR"
