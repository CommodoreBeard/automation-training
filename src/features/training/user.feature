Feature: Test the user page message
    As a user of the site
    I want to be able to verify the user page content

    Scenario: The welcome message text matches expected
        Given I open the site "/"
        When I set "Joe" to the inputfield "#username-input"
        And I set "p4ssw0rd!" to the inputfield "#password-input"
        And I click on the button "#submit-btn"
        Then I expect that element "#user-msg" contains the text "Your username is Joe"
        And I expect that element "#password-msg" contains the text "and your password is p4ssw0rd!"
