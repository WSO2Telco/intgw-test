Feature: User creation for API roles


Scenario Outline: HUB-55 : Hub administrator creates user with API Creator Role
Given I am in identity server page
When I enter identity server username credentials
And I click on identity server sign in
Then I should see the ids Home page header as "WSO2Telco Hub Home"
When I click on identity server Main tab
And I click on identity server Configuration Users and Roles List link
Then I should see ids Configuration menu with first item as "Users and Roles"
When I click identity server User Management Users link
Then I should see ids User Management Users page header as "Users"
When I clear existing users "<userName>"
And I click on identity server Configuration Users and Roles Add link
Then I should see ids Configuration menu with first item as "Add Users and Roles"
When I click identity server User Management Add New User link
Then I should see ids User Management Add User page header as "Step 1 : Enter user name"
When I enter ids Add User name as "<userName>"
And I enter ids Add User password as "<userName>"
And I enter ids Add User password repeat as "<userName>"
And I click on ids Add User next button
Then I should see ids User Management Select Role for user page header as "Step 2 : Select roles of the user"
Then I should click on role "<role>" checkbox
And I click on ids Select Users to Add Role Finish
Then I should see ids Add User Success pop up message as "WSO2 Carbon"
And I click on Success pop up message Ok button
Examples:
|userName      |role   |
|APICREATE     |Creator| 


Scenario Outline: HUB-56 : Hub administrator creates user with API Publisher Role
Given I am in identity server page
When I enter identity server username credentials
And I click on identity server sign in
Then I should see the ids Home page header as "WSO2Telco Hub Home"
When I click on identity server Main tab
And I click on identity server Configuration Users and Roles List link
Then I should see ids Configuration menu with first item as "Users and Roles"
When I click identity server User Management Users link
Then I should see ids User Management Users page header as "Users"
When I clear existing users "<userName>"
And I click on identity server Configuration Users and Roles Add link
Then I should see ids Configuration menu with first item as "Add Users and Roles"
When I click identity server User Management Add New User link
Then I should see ids User Management Add User page header as "Step 1 : Enter user name"
When I enter ids Add User name as "<userName>"
And I enter ids Add User password as "<userName>"
And I enter ids Add User password repeat as "<userName>"
And I click on ids Add User next button
Then I should see ids User Management Select Role for user page header as "Step 2 : Select roles of the user"
Then I should click on role "<role>" checkbox
And I click on ids Select Users to Add Role Finish
Then I should see ids Add User Success pop up message as "WSO2 Carbon"
And I click on Success pop up message Ok button
Examples:
|userName        |role                                 |
|PUBLISHER       |hub-unit1-publisher,manage-app-admin |
|PUBLISHERTWO    |hub-unit1-publisher,manage-app-admin |
|PUBLISHERTHREE  |hub-unit2-publisher,manage-app-admin |


Scenario Outline: HUB-57 : Hub administrator creates user who is an operator administrator
Given I am in identity server page
When I enter identity server username credentials
And I click on identity server sign in
Then I should see the ids Home page header as "WSO2Telco Hub Home"
When I click on identity server Main tab
And I click on identity server Configuration Users and Roles List link
Then I should see ids Configuration menu with first item as "Users and Roles"
When I click identity server User Management Users link
Then I should see ids User Management Users page header as "Users"
When I clear existing users "<userName>"
And I click on identity server Configuration Users and Roles Add link
Then I should see ids Configuration menu with first item as "Add Users and Roles"
When I click identity server User Management Add New User link
Then I should see ids User Management Add User page header as "Step 1 : Enter user name"
When I enter ids Add User name as "<userName>"
And I enter ids Add User password as "<userName>"
And I enter ids Add User password repeat as "<userName>"
And I click on ids Add User next button
Then I should see ids User Management Select Role for user page header as "Step 2 : Select roles of the user"
Then I should click on role "<role>" checkbox
And I click on ids Select Users to Add Role Finish
Then I should see ids Add User Success pop up message as "WSO2 Carbon"
And I click on Success pop up message Ok button
Examples:
|userName |role                          |
|OPADMIN  |OperatorAdmin,manage-app-admin|