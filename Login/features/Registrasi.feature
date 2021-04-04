@PicardataRegis
Feature: Registration

@Main
Scenario: Verify Registration
Given open the website
When user input Email
And user input password
And user click on login button
Then user should see text "Overall Statistics"