Feature: Login Validation To all Modules

@Smoke
Scenario Outline: Check if the users can login to all the modules in API Manager with the aggrigator role
Given I am in identity server page
When I enter identity server username credentials
And I click on identity server sign in
Then I should see the ids Home page header as "WSO2 Identity Server Home"
When I click on identity server Configuration tab
Then I should see ids Configuration menu with first item as "Users and Roles"
When I click on identity server Configuration Users and Roles link
Then I should see identity server User Management page header as "System User Store"
When I click identity server User Management Roles link
Then I should see ids User Management Roles page header as "Roles"
When I clear existing aggrigator role
And I click on ids User Management Roles add new role link
Then I should see ids User Management Add Role page header as "Step 1 : Enter role details"
When I enter ids Add Role role name as "aggrigator"
And I click on ids Add Role next button
Then I should see ids Add Role Select permission to Add Role page header as "Step 2 : Select permissions to add to Role"
When I click on ids Add Role Select permission to Add Role next button
Then I should see ids Add Role Select Users to Add Role page header as "Step 3 : Select users to add to Role"
When I enter ids Select Users to Add Role user name pattern as "<usertype>"
And I click on ids Select Users to Add Role search
And I select ids Select Users to Add Role "<usertype>" check box
And I click on ids Select Users to Add Role Finish
Then I should see ids Add Role Success pop up message as "Role PRIMARY/aggrigator is added successfully."
When I close the browser
And I am in apimanager
And I click on apimanager login
Then I should see the apimanager "Login" pop up
When I enter apimanager Login username and password for "<usertype>" 
And I click on apimanager Login pop up login button
Then I should see apimanager "<usertype>" at the top right corner of the page
When I click on apimanager APIs module
Then I should see the apimanager APIs page header as "APIs"
When I click on apimanager My Applications
Then I should see the apimanager Application page header as "Applications"
When I click on apimanager My Subscriptions
Then I should see the apimanager Subscriptions page header as "Subscriptions"
When I click on apimanager Manage
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page username and password for "<usertype>"
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
When I click on close window
And I click on apimanager Sandbox
Then I should see the Login in apimanager Sandbox page header as "Login"
When I enter apimanager Sandbox page username and password for "<usertype>"
And I click on apimanager Sandbox page login button
Then I should see the apimanager sandbox index page header as "Welcome"


Examples:
|usertype  |
|AGGRIGATOR|

