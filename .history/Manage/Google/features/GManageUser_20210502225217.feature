@GoogleManage
Feature: Google Manage App

@GM1
Scenario: Verify Google Manage App
And user should see text home screen
And user click on Integrated App
Then user click on View Picardata on Google
And user select Manage App

@GMCUser
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

@GMCGroup
Scenario: Verify Create New Group
And user should see text home screen
And user click on Integrated App
Then user click on View Picardata on Google
And user select Manage App
And user click on create new group
Then user input group name
And user input email group
And user input description
And user click on save
Then new group should be appears

@GMCGroup
Scenario: Verify Add User
And user should see text home screen
And user click on Integrated App
Then user click on View Picardata on Google
And user select Manage App
And user click on add user
And user click on add on selected user
And click on close button
Then click on View

@GMGDel
Scenario: Verify Remove User
And user should see text home screen
And user click on Integrated App
Then user click on View Picardata on Google
And user select Manage App
And user click on add user
And user click remove on selected user
And click on close button
Then click on View

@GMUDel
Scenario: Verify Remove User
And user should see text home screen
And user click on Integrated App
Then user click on View Picardata on Google
And user select Manage App
And user click on selected user
And user click on delete
Then verify user already deleted