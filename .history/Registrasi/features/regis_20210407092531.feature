@Picardata
Feature: Registration

@Main
Scenario: Verify Registration
Given open the website
Then user click on sign up
Then user input Email
And user input password
Then user click on signup button
And user should see "Welcome to Picardata!"
And user continue to complete profile
And user continue to start integrating
Then user should see Homepage