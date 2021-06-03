@ManageForms
Feature: Create New Forms


@CreateForms
Scenario: Verify user can create new Forms
And user should see text home screen
And user click on Forms menus
Then select on create menus
And user change title Forms
And user fill form description
And user fill question field
Then user select short answer type
And user fill short answer field
And user click on see preview form
And user click on close preview
And user select to back
#Then verify form already appears

@ShareEmail
Scenario: Verify user can share forms via email
And user should see text home screen
And user click on Forms menus
And user click share on the form selected
And user input email address
And user input subject
And user input massage
Then user click on send button
#Then verify that form already shared

@CopyLink
Scenario: Verify user can copy link form
And user should see text home screen
And user click on Forms menus
And user click share on the form selected
And user click on link menus
And user click on copy button
Then verify text already copied


@OpenAndEdit
Scenario: Verify user can open and edit form
And user should see text home screen
And user click on Forms menus
And user click on open
And user change title
And user change question
And user change answer type
And user change description
And user add image
Then user select to back to menus