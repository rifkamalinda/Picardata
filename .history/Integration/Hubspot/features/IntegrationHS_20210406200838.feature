@IntegrationHubspot
Feature: Integrated to Hubspot

@Integration_Acc
Scenario: Verify user can integrated to Hubspot
Given user login using correct username and password
And user should see text "Copyright © Picardata 2021"
When user click on App Library
Then user should see Homepage
And user click on Add to Picardata
And user click on Integrate button