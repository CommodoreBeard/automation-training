Feature: Test the user entry
			As a user of the site
			I want to be able to enter my name and submit it as a user

Scenario: Welcome text on site matches expected - pass
			Given I open the site "/"
			When I set "Ian" to the inputfield "#username-input"
			And I click on the button "#user-name-submit-btn"
			Then I expect that element "#user-msg" contains the text "Your username is Ian"

Scenario: Welcome text on site matches expected - Failure
			Given I open the site "/"
			When I set "ERROR" to the inputfield "#username-input"
			And I click on the button "#user-name-submit-btn"
			Then I expect that element "#user-msg" not contains the text "Ian"

Scenario: Welcome text on site matches expected - Failure
			Given I open the site "/"
			When I set "Ian" to the inputfield "#username-input"
			And I click on the button "#user-name-submit-btn"
			Then I expect that element "#user-msg" not contains the text "ERROR"
