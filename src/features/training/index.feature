Feature: Test the index page welcome message
    As a user of the site
    I want to be able to verify the welcome message content
    
    Scenario: The welcome message text matches expected
        Given I open the site "/"
        Then I expect that element "#welcome-msg" contains the text "Welcome to the automation stuff web service"
