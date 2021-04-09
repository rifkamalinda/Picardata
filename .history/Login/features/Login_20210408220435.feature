@PicardataRegis
Feature: Registration

@Main
Scenario: Verify Registration
Given open the website
When user login correctly
Then user should see text "Overall Statistics"

Scenario: Verify user can integrated to Hubspot
When user click on App Library
Then user should see Homepage
And user click on Add to Picardata
And user click on Integrate button