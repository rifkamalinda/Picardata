@GoogleManage
Feature: Google Manage App

@GM1
Scenario: Verify Google Manage App
And user should see text home screen
And user click on Integrated App
Then user click on View Picardata on Google
And user select Manage App

@GMCreate1
Scenario: Verify Create New user
And user should see text home screen
And user click on Integrated App
Then user click on View Picardata on Google
And user select Manage App
And user click on create new user
Then user input first name
And user input last name
And user input email
And user input password
Then user click on save button