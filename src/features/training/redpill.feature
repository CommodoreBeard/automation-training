Feature: Test the Red Pill
			As a user of the site
			I want to be able to enter my name and take the red pill

Scenario: The red pill button is visible
		Given I open the site "/"
		Then I expect that element "#redpill-btn" is visible

Scenario: Welcome text on site matches expected - pass
			Given I open the site "/"
			When I set "Ian" to the inputfield "#redpill-input"
			And I click on the button "#redpill-btn"
			Then I expect that element "#redpill-msg" contains the text "Ian why, oh why didn't you take the blue pill?"

Scenario: Welcome text on site matches expected - fail
			Given I open the site "/"
			When I set "ERROR" to the inputfield "#redpill-input"
			And I click on the button "#redpill-btn"
			Then I expect that element "#redpill-msg" not contains the text "Ian why, oh why didn't you take the blue pill?"
