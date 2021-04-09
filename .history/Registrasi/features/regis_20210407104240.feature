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
And user continue to complete profile and should see "How Picardata works?"
And user fill the fields and should see "How Picardata works?"
Then user should see Homepage