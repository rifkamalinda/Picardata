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